class PostsController < ApplicationController
  before_action :authenticate_account!

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.account_id = current_account.id if account_signed_in?
    if @post.save 
      flash[:success] = 'Post was successfully created'
      redirect_to dashboard_path
    else
      flash.now[:danger] = 'Post not saved'
      render 'new'
    end
  end
  
  
  def show
    
  end


  private 

  def post_params
    params.require(:post).permit(:description, :image, :image_cache)
  end
  
  
end