class ApplicationController < ActionController::Base
  protect_from_forgery
  def render_404
    Rails.logger.error "ROUTING_ERROR. Invalid URL. No Such URL exists"
    render status: 404, json: {:error => {:reason => "ROUTING_ERROR", :text => "The page you were looking for doesn't exist" }}
  end
end
