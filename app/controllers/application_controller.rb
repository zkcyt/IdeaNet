class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  add_flash_types :success, :info, :warning, :danger

  def after_sign_in_path_for(resource)
    posts_path(current_user.id)
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation, :nickname, :profile])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :password_confirmation, :nickname, :profile])
  end

  private
  def sign_in_required
    redirect_to new_user_session_url unless user_signed_in?
  end


end
