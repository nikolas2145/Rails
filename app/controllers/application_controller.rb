class ApplicationController < ActionController::Base

  include Pagy::Backend


  before_action :configure_permitted_parameters, if: :devise_controller?



  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation, :remember_me, :last_name ) }
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:login, :name, :email, :password, :remember_me, :last_name ) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password ) }
  end
end
