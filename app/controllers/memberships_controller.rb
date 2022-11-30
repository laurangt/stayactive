class MembershipsController < ApplicationController
  def create
    @group = Group.find(params[:group_id])
    @user = current_user
    @membership = Membership.new(user: @user, group: @group)
    if @membership.save
      redirect_to root_path
    end
  end
end
