#
class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  @title = 'Driver Manager'

  # Prevent CSRF attacks by raising an exception.
  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i(firstname lastname
                                                         address_id))
  end
end
