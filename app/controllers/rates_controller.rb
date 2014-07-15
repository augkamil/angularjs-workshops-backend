class RatesController < ApplicationController
  respond_to :json

  expose(:movie)
  expose(:rate, attributes: :rate_params)
  expose(:rates) { movie.present? ? movie.rates : rates }

  def index
    respond_with rates
  end

  def show
    respond_with rate
  end

  def create
    if rate.save
      respond_with rate
    else
      render :new
    end
  end

  def update
    if rate.save
      respond_with rate
    else
      render :edit
    end
  end

  private

    def rate_params
      params.require(:rate).permit(:user_id, :movie_id, :value)
    end
end
