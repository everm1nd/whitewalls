class HomeController < ApplicationController
  def index
  	@artworks = Artwork.page params[:page]
  end
end
