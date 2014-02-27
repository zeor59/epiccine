#encoding: utf-8

class Admin::CommentsController < AdminController
  def destroy
    comment = Comment.find(params[:id])
    movie_id = comment.movie_id
    comment.destroy
    redirect_to movie_path(movie_id)
  end
end
