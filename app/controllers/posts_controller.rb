class PostsController < ApplicationController
  def index
    @posts = Post.all
    @posts.each_with_index do |post, index|
      post.title = "Spam" if index % 5 == 0 && index != 0 
    end
  end

  def show
  end

  def new
  end

  def edit
  end
end
