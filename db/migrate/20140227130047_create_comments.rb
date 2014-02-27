class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :id_user
      t.integer :id_movie
      t.text :comment
      t.datetime :date
      t.float :notation
      t.belongs_to :movie
      t.belongs_to :user
      t.timestamps
    end
  end
end
