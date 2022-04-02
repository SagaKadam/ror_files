class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    post = Post.create(post_params)
  end

  def edit
  end

  def update
    @post.update_attributes(post_params)
  end

  def destroy
  end

  def index
    @posts = Post.all
  end

  def show
    @posts = Post.find_by(id: params['id'])
  end

  private
  def post_params
    params.require(:post).permit(:user_id, :post_content)
  end
end
