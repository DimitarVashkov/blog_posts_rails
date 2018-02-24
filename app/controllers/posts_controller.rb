class PostsController < ApplicationController
  def index
    @posts = Post.paginate(page: params[:page])
  end

  def new

  end

  def create

  end
end
