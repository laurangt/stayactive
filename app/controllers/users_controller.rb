class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @groups = @user.groups
    authorize @user
  end
end
