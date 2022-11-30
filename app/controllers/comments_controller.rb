class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.membership = Membership.find_by(user: current_user)
    @group =  @comment.membership.group
    @post = Post.find(params[:post_id])
    @comment.post = @post
    if @comment.save
      redirect_to group_post_path(@group, @post)
      authorize @comment
    else
      redirect_to group_path(@group)
      #render 'groups/show', status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to group_path
    authorize @comment
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
