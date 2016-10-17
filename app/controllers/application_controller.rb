class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  #before_filter :configure_permitted_parameters, if: :devise_controller?

    protected
        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up, keys: [:nombre, :telefono, :is_female, :email, :password, :date_of_birth ])
            devise_parameter_sanitizer.permit(:sign_in, keys: [:nombre, :telefono, :is_female, :email, :password, :date_of_birth])
        end
end
