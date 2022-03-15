class Employee < ApplicationRecord
	has_many :assets
	has_one_attached :image
end
