class AccountsController < ApplicationController
  before_action :authenticate_account!
  before_action :set_account, only: [:profile]
  def index
    # user dashboard-feed
    @posts = Post.active
  end
  
  def profile
    # user profile
    @posts = @account.posts.active
  end

  private

  def set_account
    @account = Account.find(params[:username])
  end
  
  
end
