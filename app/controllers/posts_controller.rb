class PostsController < ApplicationController
  def new
    # @group = Group.find(params[:group_id])
    @post = Post.new
    @membership = Membership.find(params[:membership_id])
  end

  def create
    @post = Post.new(post_params)
    @post.membership = Membership.find(params[:membership_id])
    if @post.save
      redirect_to group_path(params[:id])
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to group_path
  end

  private

  def params_post
    params.require(:post).permit(:title, :content, :membership_id)
  end
end
