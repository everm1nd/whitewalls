ActiveAdmin.register Artwork do
  permit_params :name, :description, :year, :price, :artist
end
