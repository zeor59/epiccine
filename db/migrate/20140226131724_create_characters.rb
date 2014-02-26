class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.text :biography
      t.string :picture

      t.timestamps
    end
  end
end
