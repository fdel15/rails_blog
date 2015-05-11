class PostsController < ApplicationController
  include PostsHelper
  respond_to :html, :json

  def index
    @posts = Post.all.reverse
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Post successfully created!"
    else
      flash[:notice] = "Error: Post not created"
    end
    respond_with(@post)
  end

  def show
    @post = Post.find(params[:id])
    @post_date = @post.post_date
  end

  private

  def post_params
    params.require(:post).permit!
  end


end