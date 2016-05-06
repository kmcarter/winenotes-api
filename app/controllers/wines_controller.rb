class WinesController < ApplicationController
  include ActionController::HttpAuthentication::Token::ControllerMethods
  before_action :restrict_access

  def index
    wines = Wine.all
    render json: wines, status: 200
  end

  private
  def restrict_access
    authenticate_or_request_with_http_token do |token, options|
      ApiKey.exists?(access_token: token)
    end
  end
end
