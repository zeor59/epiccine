class CinemasController < ApplicationController
  
  def index
    @cinemas = Cinema.all
  end

  def show
  end

end
