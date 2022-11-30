class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @group = Group.find(params[:group_id])
    authorize @post
  end

  def new
    @group = Group.find(params[:group_id])
    @post = Post.new
    authorize @post
  end

  def create
    @group = Group.find(params[:group_id])
    @post = Post.new(post_params)
    @post.membership = Membership.find_by(user: current_user, group: @group)
    if @post.save
      redirect_to group_path @group
      authorize @post
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to group_path
    authorize @post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :membership_id)
  end
end
