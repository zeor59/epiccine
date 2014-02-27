#encoding: utf-8

class CharactersController < ApplicationController
  before_action :set_character, only: [:show]

  def index
    @characters = Character.page(params[:page]).per(2)
  end

  def show
  end

  private
    def set_character
      @character = Character.find(params[:id])
    end
end
