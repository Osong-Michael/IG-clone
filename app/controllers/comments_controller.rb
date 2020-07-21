class CommentsController < ApplicationController
  before_action :authenticate_account!

  def create
    @comment = Comment.new(comment_params)
    @comment.account_id = current_account.id if account_signed_in?

    if @comment.save 
      return_url = params[:comment][:return_to].present? ? post_path(@comment.post_id) : dashboard_path
      redirect_to return_url, flash: {primary: 'Comment added successfully'}
    else
      redirect_to dashboard_path, flash: {danger: 'Comment was not created'}
    end
  end

  private 

  def comment_params
    params.require(:comment).permit(:comment, :post_id, :return_to)
  end
  
end