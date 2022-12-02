class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.membership = Membership.find_by(user: current_user)
    @group = @comment.membership.group
    @post = Post.find(params[:post_id])
    @comment.post = @post
    authorize @comment
    if @comment.save
      redirect_to group_post_path(@group, @post)
    else
      #redirect_to group_post_path(@group, @post)
      #render 'groups/show', status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    @post = Post.find(params[:post_id])
    redirect_to post_path(@post)
    authorize @comment
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
