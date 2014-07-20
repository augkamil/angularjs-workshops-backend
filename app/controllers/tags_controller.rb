class TagsController < ApplicationController
  respond_to :json

  expose(:movie)
  expose(:tag, attributes: :tag_params)
  expose(:tags) { movie.id.nil? ?  Tag.all : movie.tags }

  def index
    respond_with tags
  end

  def show
    respond_with tag
  end

  def create
    if tag.save
      respond_with tag
    else
      render :new
    end
  end

  def update
    if tag.save
      respond_with tag
    else
      render :edit
    end
  end

  private

    def tag_params
      params.require(:tag).permit(:user_id, :movie_id, :name)
    end
end
