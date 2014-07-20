class MoviesController < ApplicationController
  respond_to :json

  expose(:tag)
  expose(:movie, attributes: :movie_params)
  expose(:movies) { tag.id.nil? ? Movie.all : tag.movies }

  def index
    respond_with movies
  end

  def show
    respond_with movie
  end

  def create
    if movie.save
      respond_with movie
    else
      render :new
    end
  end

  def update
    if movie.save
      respond_with movie
    else
      render :edit
    end
  end

  private

    def movie_params
      params.require(:movie).permit(:title, :director, :rate, :description, :release_date, :time, :image_url)
    end
end
