class HomeController < ApplicationController
  def index
  	@collections = Collection.all
  end

  def about
  end

  def contacts
  end
end
