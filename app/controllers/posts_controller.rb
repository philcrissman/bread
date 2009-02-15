class PostsController < ApplicationController
  
  def index
    @posts = Post.find :all # well, all published.
  end
  
  def new
  end
  
  def create
    @post = Post.create(params[:post])
    @post.save
    redirect_to root_url
  end
  
  def show
    @post = Post.find(params[:id])
  end
end
