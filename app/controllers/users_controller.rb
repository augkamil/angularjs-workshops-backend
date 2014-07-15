class UsersController < ApplicationController
  respond_to :json
  respond_to :html

  expose(:user, attributes: :user_params)
  expose(:users)

  def index
    respond_with users
  end

  def show
    respond_with user
  end

  def create
    if user.save
      respond_with user
    else
      render :new
    end
  end

  def update
    if user.save
      respond_with user
    else
      render :edit
    end
  end

  private

    def user_params
      binding.pry
      params.require(:user).permit(:name, :email, :password)
    end
end
