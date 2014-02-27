class DeleteCommentsIds < ActiveRecord::Migration
  def change
  	remove_column :comments, :id_user
  	remove_column :comments, :id_movie
  end
end
