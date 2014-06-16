class Collection < ActiveRecord::Base
	mount_uploader :image, ImageUploader

	validates_presence_of :title, :description
end