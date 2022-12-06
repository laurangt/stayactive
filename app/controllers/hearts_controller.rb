class HeartsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    post = Post.find(params[:post_id])
    heart = Heart.new
    heart.membership = Membership.find_by(user: current_user, group: post.membership.group)
    heart.post = post
    authorize heart
    heart.save
    respond_to do |format|
      format.text { render partial: "hearts/heart", locals: { post: post, user_liked: true, user: current_user }, formats: [:html] }
    end
  end

  def destroy
    heart = Heart.find(params[:id])
    post = heart.post
    authorize heart
    heart.destroy
    respond_to do |format|
      format.text { render partial: "hearts/heart", locals: { post: post, user_liked: false, user: current_user }, formats: [:html] }
    end
  end

end
