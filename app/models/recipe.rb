class Recipe < ApplicationRecord
	belongs_to :chef
	validates :chef_id, presence: true
	validates :name, presence: true, length: {maximum: 100 , minimum: 5}
	validates :summary, presence: true, length: {maximum: 150 , minimum: 10}
	validates :description, presence: true, length: {maximum: 300 , minimum: 30}
	mount_uploader :picture, PictureUploader
	validate :picture_size
	
	private
		def picture_size
			if picture.size > 5.megabytes
				errors.add(:picture, "should be less than 5MB")
			end
		end
end
