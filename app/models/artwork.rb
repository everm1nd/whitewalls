class Artwork < ActiveRecord::Base
	belongs_to :artist

	mount_uploader :image, ImageUploader

	paginates_per 14

	validates_presence_of :title, :description, :year, :price, :artist, :image
end
