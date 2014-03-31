class HomeController < ApplicationController
  def index
  	@artworks = Artwork.newest.page params[:page]
  end

  def about
  end

  def contacts
  end
end
