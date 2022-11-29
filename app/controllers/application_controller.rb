class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def configure_permitted_parameter
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :bio, :photo])
  end
end
