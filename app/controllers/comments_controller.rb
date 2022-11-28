class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.membership.user = current_user
    @comment.post = Post.find(params[:post_id])
    if @comment.save
      redirect_to posts_path(params[:post_id])
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:comment, :membership_id, :post_id)
  end
end
