class CreateCinemas < ActiveRecord::Migration
  def change
    create_table :cinemas do |t|
      t.string :name
      t.string :city
      t.text :address
      t.integer :zip_code

      t.timestamps
    end
  end
end
