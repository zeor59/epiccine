class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :cover
      t.integer :duration
      t.text :summary
      t.float :staff_notation

      t.timestamps
    end
  end
end
