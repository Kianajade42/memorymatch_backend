class GamesController < ApplicationController
def index
  #  @games = Game.find_by(id: params[:id])
    @games = Game.all
    render json: @games
end

 def create
    @user = User.find_by(username: params[:username])
    Game.create(user_id: @user.id, score: params[:score], time: params[:time])
  end
end
