class PagesController < ApplicationController
  #skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @user = current_user
    @groups = @user.groups
    @projects = @user.projects
  end

  def settings
  end
end
