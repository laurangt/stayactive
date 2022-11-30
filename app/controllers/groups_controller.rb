class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
    @membership = Membership.new
    authorize @group.posts
  end
end
