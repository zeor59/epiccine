#encoding: utf-8

class MoviesController < ApplicationController
  before_action :set_movie, only: [:show]

  def index
    @movies = Movie.page(params[:page]).per(2)
  end

  def show
    @movie_characters = MovieCharacter.where(movie_id: @movie.id)
  end

  private
    def set_movie
      @movie = Movie.find(params[:id])
    end
end