class PostsController < ApplicationController
  before_action :authenticate_account!
  before_action :set_post, only: [:show]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.account_id = current_account.id if account_signed_in?
    if @post.save 
      flash[:primary] = 'Post was successfully created'
      redirect_to dashboard_path
    else
      flash.now[:danger] = 'Post not saved'
      render 'new'
    end
  end
  
  
  def show
    @comment = Comment.new
    @comments = Comment.includes(:account).where(post_id: @post.id)
  end


  private 

  def set_post
    @post = Post.find(params[:id]) if params[:id].present?
  end

  def post_params
    params.require(:post).permit(:description, :image, :image_cache)
  end
  
  
end