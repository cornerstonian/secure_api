class Api::PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Posts.find_by id: params[:id]
  end


end
