class Recipe < ApplicationRecord
	belongs_to :chef
	validates :chef_id, presence: true
	validates :name, presence: true, length: {maximum: 100 , minimum: 5}
	validates :summary, presence: true, length: {maximum: 150 , minimum: 30}
	validates :description, presence: true, length: {maximum: 300 , minimum: 50}
end
