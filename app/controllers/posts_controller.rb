class PostsController < ApplicationController
  
  def index
    @posts = Post.find( :all, :order => 'created_at DESC' )# well, all published.
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
