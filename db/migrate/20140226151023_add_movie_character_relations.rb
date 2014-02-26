class AddMovieCharacterRelations < ActiveRecord::Migration
  def change
  	add_index :movie_characters, [:movie_id, :character_id]
  end
end
