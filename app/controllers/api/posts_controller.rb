class Api::PostsController < ApplicationController

  before_action :doorkeeper_authorize!

  def index
    @posts = Post.all
  end

  def show
    @post = Posts.find_by id: params[:id]
  end


end
