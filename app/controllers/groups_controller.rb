class GroupsController < ApplicationController
  def index
    @groups = Group.all
    @groups = policy_scope(Group)
  end

  def show
    @user = current_user
    @group = Group.find(params[:id])
    authorize @group
    authorize @group.posts
    if Membership.find_by(user: @user, group: @group)
      @membership = Membership.find_by(user: @user, group: @group)
    else
      @membership = Membership.new
    end
  end
end
