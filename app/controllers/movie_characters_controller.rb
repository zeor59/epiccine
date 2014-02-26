#encoding: utf-8
class MovieCharactersController < ApplicationController

    def create
        movie_character = MovieCharacter.new(movie_params)

        if movie_character.save
            flash['notice'] = 'ok, ajouté'
            redirect_to movies_path
        else
            flash['error'] = 'fail'
            format.html { render action: 'new'}
        end
    end
    
    def movie_params
        params.require(:movie_character).permit(:movie_id, :character_id, :role)
    end

end