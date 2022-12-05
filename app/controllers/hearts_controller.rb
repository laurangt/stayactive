class HeartsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    @post = Post.find(params[:post_id])
    @heart = Heart.new
    @heart.membership = Membership.find_by(user: current_user, group: @post.membership.group.id)
    @heart.post = @post
    authorize @heart
    if @heart.save
      head :ok
    end
  end

  def destroy
    @heart = Heart.find(params[:id])
    @heart.destroy
    @post = Post.find(params[:post_id])
    redirect_to post_path(@post)
  end

end
