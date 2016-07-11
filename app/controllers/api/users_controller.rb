class Api::UsersController < ApplicationController

  protect_from_forgery with: :null_session

  before_action do
    request.format = :json
  end

  def create
     @user = User.new params.require(:user).permit(:username, :password)
     if @user.save!
       render json: {user: @user}, status: 201
     else
       render json: @user.errors, status: 422
     end
  end
end
