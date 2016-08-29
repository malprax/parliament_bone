class Admin::ApplicationController < ActionController::Base
  after_filter :store_location
  before_filter :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  protected
    def configure_permitted_parameters
      #added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
      devise_parameter_sanitizer.for(:sign_in) << [:username, :email]
      devise_parameter_sanitizer.for(:sign_up) << [:username, :email]
      devise_parameter_sanitizer.for(:account_update) << [:username, :email]
    end

    def store_location
      # store last url - this is needed for post-login redirect to whatever the user last visited.
      return unless request.get?
      if (request.path != "/users/sign_in" &&
          request.path != "/users/sign_up" &&
          request.path != "/users/password/new" &&
          request.path != "/users/password/edit" &&
          request.path != "/users/confirmation" &&
          request.path != "/users/sign_out" &&
          !request.xhr?) # don't store ajax calls
        session[:previous_url] = request.fullpath
      end
    end

    def after_sign_in_path_for(resource)
      session[:previous_url] || root_path
    end

end