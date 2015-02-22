class PostsController < ApplicationController
  respond_to :html, :json

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    respond_with @post
  end


end