#encoding: utf-8
class Admin::CinemasController < AdminController
  before_action :set_cinema, only: [:show, :edit, :update, :destroy]

  def index
    @cinemas = Cinema.all
  end

  def show
  end

  def new
    @cinema = Cinema.new
  end

  # GET /cinemas/1/edit
  def edit
  end

  def create
    @cinema = Cinema.new(cinema_params)

    if @cinema.save
        redirect_to ['admin', @cinema], notice: 'Le cinéma a été ajouté avec succès'
    else
      render action: 'new', alert: 'Erreur'
    end
  end

  def update
    if @cinema.update(cinema_params)
        redirect_to ['admin', @cinema], notice: 'Fiche cinéma mise à jour'
    else
      render action: 'edit', alert: 'Erreur'
    end
  end

  def destroy
    @cinema.destroy
    redirect_to admin_cinemas_url
  end

  private
    def set_cinema
      @cinema = Cinema.find(params[:id])
    end

    def cinema_params
      params.require(:cinema).permit(:name, :city, :address, :zip_code)
    end
end