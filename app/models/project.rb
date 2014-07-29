class Project < ActiveRecord::Base
	validates :title, presence: true
	has_many :images

	accepts_nested_attributes_for :images
end
