class HomeController < ApplicationController
  def index
  	@collections = Collection.all
  	@featured_artworks = Artwork.newest.featured.limit(13)
  end

  def about
  end

  def contacts
  end
end
