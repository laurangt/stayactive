class PostsController < ApplicationController

  def create
    @post = Post.new(post_params)
    @post.membership = Membership.find(params[:membership_id])
    @group = @post.membership.group.id
    if @post.save
      redirect_to group_path(params[:id])
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end


  private

  def params_post
    params.require(:post, :membership_id).permit(:title, :content, :membership_id)
  end
end
