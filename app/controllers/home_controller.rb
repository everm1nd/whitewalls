class HomeController < ApplicationController
  def index
    @order = Order.new
    @artwork = Artwork.find 1
  	@collections = Collection.all
  end
end
