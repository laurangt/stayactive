class GroupsController < ApplicationController
  def index
    @groups = Group.includes(posts: { membership: :user}).all
    @groups = policy_scope(Group)
  end

  def show
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true) #enable all other than link
    @user = current_user
    @group = Group.includes(posts: { membership: :user }).find(params[:id])
    @post = Post.new
    authorize @group
    authorize @group.posts
    if Membership.find_by(user: @user, group: @group)
      @membership = Membership.find_by(user: @user, group: @group)
    else
      @membership = Membership.new
    end
  end
end
