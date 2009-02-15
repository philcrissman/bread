class PostsController < ApplicationController
  
  def index
    @posts = Post.find :all # well, all published.
  end
end
