class Agency::ProfilesController < ApplicationController
  layout "agency"

  def edit
    @agency = Agency.find(@current_agency.id)
  end

  def update
    @agency = Agency.find(@current_agency.id)
    if @agency.update_attributes(params[:agency])
      if !@agency.subdomain.eql?(@current_agency.subdomain)
        redirect_to new_user_session_url(:subdomain => @agency.subdomain, :auth_token => current_user.authentication_token)
      else
        redirect_to root_url(:subdomain => @agency.subdomain)
      end
    else
      render :edit
    end
  end
end
