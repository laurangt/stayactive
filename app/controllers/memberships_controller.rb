class MembershipsController < ApplicationController
  def join
    @group = Group.find(params[:user_id])
    @user = current_user
  end
end
