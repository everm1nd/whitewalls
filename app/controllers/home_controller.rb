class HomeController < ApplicationController
  def index
  	@artworks = Artwork.newest.page params[:page]
  end
end
