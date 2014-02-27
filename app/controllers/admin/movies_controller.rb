#encoding: utf-8

class Admin::MoviesController < AdminController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  def index
    @movies = Movie.page(params[:page]).per(2)
  end

  def show
    @movie_characters = MovieCharacter.where(movie_id: @movie.id)
  end

  def new
    @movie = Movie.new
  end

  def edit
    @movie_character = MovieCharacter.new
  end

  def create
    @movie = Movie.new(movie_params)

      if @movie.save
        redirect_to ['admin', @movie], notice: 'Ok'
      else
        render action: 'new', alert: 'Ko'
      end
  end

  def update
    if @movie.update(movie_params)
      redirect_to ['admin', @movie], notice: 'Movie was successfully updated.'
    else
      render action: 'edit', alert: 'Ko'
    end
  end

  def destroy
    @movie.destroy
    redirect_to admin_movies_url
  end

  private
    def set_movie
      @movie = Movie.find(params[:id])
    end
    def movie_params
      params.require(:movie).permit(:title, :cover, :duration, :summary, :staff_notation)
    end
end
