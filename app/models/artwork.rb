class Artwork < ActiveRecord::Base
	belongs_to :artist

	mount_uploader :image, ImageUploader

	paginates_per 14

	validates_presence_of :title, :year, :price, :artist, :image

	scope :newest, order: 'created_at DESC'
	scope :featured, where(featured: true)
end
