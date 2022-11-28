class PostsController < ApplicationController

  def create
    @post = Post.new(params_post)
    if @post.save
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end

  private

  def params_post
    params.require(:post).permit(:title, :content, :membership_id)
  end
end
