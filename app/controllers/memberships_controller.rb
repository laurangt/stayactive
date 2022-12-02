class MembershipsController < ApplicationController
  def create
    @group = Group.find(params[:group_id])
    @user = current_user
    @membership = Membership.new(user: @user, group: @group)
    authorize @membership
    if @membership.save
      redirect_to group_path(@group)
    end
  end

  def destroy
    @membership = Membership.find(params[:id])
    @membership.destroy
    redirect_to root_path
    authorize @membership
  end
end
