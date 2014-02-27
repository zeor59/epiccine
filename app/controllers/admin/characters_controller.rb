#encoding: utf-8

class Admin::CharactersController < AdminController
  before_action :set_character, only: [:show, :edit, :update, :destroy]

  def index
    @characters = Character.page(params[:page]).per(2)
  end

  def show
  end

  def new
    @character = Character.new
  end

  def edit
  end

  def create
    @character = Character.new(character_params)

    if @character.save
      redirect_to ['admin', @character], notice: 'test'
    else
      render action: 'new'
    end
  end

  def update
    if @character.update(character_params)
      redirect_to ['admin', @character]
    else
      render action: 'edit'
    end
  end

  def destroy
    @character.destroy
    redirect_to admin_characters_url
  end

  private
    def set_character
      @character = Character.find(params[:id])
    end

    def character_params
      params.require(:character).permit(:first_name)
    end
end
