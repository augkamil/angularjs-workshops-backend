class CommentsController < ApplicationController
  respond_to :json

  expose(:movie)
  expose(:comment, attributes: :comment_params)
  expose(:comments) { movie.id.nil? ? Comment.all : movie.comments }

  def index
    respond_with comments
  end

  def show
    respond_with comment
  end

  def create
    if comment.save
      respond_with comment
    else
      render :new
    end
  end

  def update
    if comment.save
      respond_with comment
    else
      render :edit
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:body, :user_id, :movie_id)
    end
end
