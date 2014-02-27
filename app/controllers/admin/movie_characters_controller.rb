#encoding: utf-8

class Admin::MovieCharactersController < AdminController

    def create
        movie_character = MovieCharacter.new(movie_params)

        if movie_character.save
            redirect_to edit_admin_movie_path(movie_params['movie_id']), notice: 'Personne ajoutée au film !'
        else    
            redirect_to edit_admin_movie_path(movie_params['movie_id']), alert: 'Erreur lors de l\'ajout.'
        end
    end

    def destroy
        movie_character = MovieCharacter.find(params[:id])
        movie_id = movie_character.movie_id
        movie_character.destroy
        redirect_to admin_movie_path(movie_id)
    end
    
    def movie_params
        params.require(:movie_character).permit(:movie_id, :character_id, :role)
    end

end