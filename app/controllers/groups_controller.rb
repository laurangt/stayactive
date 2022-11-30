class GroupsController < ApplicationController
  def index
    @groups = Group.all
    @groups = policy_scope(Group)
  end

  def show
    @group = Group.find(params[:id])
    @membership = Membership.new
    authorize @group.posts
  end
end
