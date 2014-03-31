class ArtworksController < ApplicationController
  def show
  	@artwork      = Artwork.find params[:id]
  	@artist_works = @artwork.artist.artworks.where('id != ?', @artwork.id).limit(6)
  	@other_works  = Artwork.where('id NOT IN (?)', @artist_works.ids << @artwork.id).limit(6)
  end
end
