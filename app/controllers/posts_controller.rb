class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
  end

  def new
  	@post = Post.new
  end

  def create
  	post = Post.new(post_params)
    post.user_id = current_user.id
  	post.save
  	redirect_to posts_path
  end

  def edit
  end

  private
  
  def post_params
  	params.require(:post).permit(:user_id, :title, :body, :image, :category, :postal_code, :address)
  end
end
