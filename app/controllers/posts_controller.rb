class PostsController < ApplicationController
  def index
    @posts = Post.paginate(page: params[:page])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      flash[:success] = "Post added!"
      redirect_to root_url
    else
      render 'new'
    end
  end

  def post_params
    params.require(:post).permit(:title,:body)
  end


end
