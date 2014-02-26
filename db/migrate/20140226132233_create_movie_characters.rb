class CreateMovieCharacters < ActiveRecord::Migration
  def change
    create_table :movie_characters do |t|
      t.belongs_to :movie
      t.belongs_to :character
      t.integer :movie_id
      t.integer :character_id
      t.integer :role

      t.timestamps
    end
  end
end
