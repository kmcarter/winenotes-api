class WinesController < ApplicationController
  def index
    wines = Wine.all
    render json: wines, status: 200
  end
end
