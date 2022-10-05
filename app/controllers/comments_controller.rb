class CommentsController < ApplicationController
def index
   @comments = Comment.all
   render json: @comments
end
def create 
   #  @comments = Comment.find_or_create_by(username: params[:username])
   #  render json: @comments
    @comment = Comment.create(username: params[:username], comment: params[:comment])
    render json: @comment
end
def show
    @comment = Comment.find(params[:comment])
    render json: @comment
end
end