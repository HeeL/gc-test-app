class Agency::LogosController < ApplicationController
  def create
    @agency = Agency.find(@current_agency.id)
    @logo = @agency.logos.build
    @logo.image = params[:photo][:image]
    if @logo.save
      render :json => {
        :success => true,
        :url => @logo.image.url,
        :thumb_url => @logo.image.thumb.url,
        :w => @logo.image_width,
        :h => @logo.image_height
      }.to_json
    else
      render :text => "{'success': false, 'errors': []}", :content_type => "application/json"
    end
  end
end
