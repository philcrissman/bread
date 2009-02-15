class PostsController < ApplicationController
  uses_tiny_mce :only => [:new, :edit], :options => { :theme => 'advanced', :theme_advanced_toolbar_location => "top",
  :theme_advanced_toolbar_align => "left" }
  
  def index
    @posts = Post.find( :all, :order => 'created_at DESC' )# well, all published.
  end
  
  def new
  end
  
  def create
    @post = Post.create(params[:post])
    @post.user = current_user
    @post.save
    redirect_to root_url
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    @post.update_attributes!(params[:post])
    redirect_to post_url(@post)
  end
end
