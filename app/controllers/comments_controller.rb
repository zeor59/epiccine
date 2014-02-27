#encoding: utf-8

class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
      redirect_to movie_path(comment_params['movie_id']), notice: 'Le commentaire a bien été ajouté.' 
    else
      render action: 'new' 
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:user_id, :movie_id, :comment, :date, :notation)
    end
end
