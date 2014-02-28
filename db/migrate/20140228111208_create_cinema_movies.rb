class CreateCinemaMovies < ActiveRecord::Migration
  def change
    create_table :cinema_movies do |t|
      t.integer :movie_id
      t.integer :cinema_id
      t.datetime :session
      t.belongs_to :cinema
      t.belongs_to :movie
      t.timestamps
    end
  end
end
