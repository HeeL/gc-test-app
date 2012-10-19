class ApplicationController < ActionController::Base
  protect_from_forgery
  include UrlHelper

  before_filter :current_agency
  

  protected

  def current_user
    @current_user ||= User.find(1)
  end

  helper_method :current_user

  def current_trip
    @current_trip ||= Trip.find(1)
  end

  helper_method :current_trip
  
  def current_agency
    @current_agency ||= Agency.find(1)
  end

  helper_method :current_agency

  def not_found
    raise ActionController::RoutingError.new('404')
  end
end
