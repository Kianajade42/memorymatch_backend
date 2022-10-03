class UsersController < ApplicationController
def index
    @users = User.all
    render json: @users, only: [:username]
end
def create 
    @user = User.find_or_create_by(username: params[:username])
    render json: @user
end

def show
    @user = User.find(params[:id])
    render json: @user

end

  private

  def user_params
    params.require(:username)
  end

end