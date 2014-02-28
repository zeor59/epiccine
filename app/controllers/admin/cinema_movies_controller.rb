#encoding: utf-8

class Admin::CinemaMoviesController < AdminController

    def create
        cinema_movie = CinemaMovie.new(movie_params)

        if cinema_movie.save
            redirect_to edit_admin_cinema_path(movie_params['cinema_id']), notice: 'Séance ajoutée au cinéma'
        else    
            redirect_to edit_admin_cinema_path(movie_params['cinema_id']), alert: 'Erreur lors de l\'ajout.'
        end
    end

    def destroy
        cinema_movie = CinemaMovie.find(params[:id])
        cinema_id = cinema_movie.cinema_id
        cinema_movie.destroy
        redirect_to admin_cinema_path(cinema_id)
    end
    
    def movie_params
        params.require(:cinema_movie).permit(:movie_id, :cinema_id, :session)
    end

end