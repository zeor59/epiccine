class CinemasController < ApplicationController
  
  def index
    @cinemas = Cinema.all
  end

  def show
  	@cinema = Cinema.find(params[:id])
  end

end
