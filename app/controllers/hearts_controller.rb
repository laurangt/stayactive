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
    # respond_to do |format|
    #   format.html { redirect_to group_path(@heart.membership.group) }
    #   format.text { render partial: "hearts/heart", locals: { post: @post, user_liked: @post.liked?(current_user), user: current_user }, formats: [:html] }
    # end
  end

  def destroy
    @heart = Heart.find(params[:id])
    @heart.destroy
    @post = Post.find(params[:post_id])
    redirect_to post_path(@post)
    # respond_to do |format|
    #   format.html { redirect_to group_path(@heart.membership.group) }
    #   format.text { render partial: "hearts/heart", locals: { post: @post, user_liked: @post.liked?(current_user), user: current_user }, formats: [:html] }
    # end
  end

end
