class Category < ApplicationRecord
	# Relationships
	has_many :photos
	has_many :articles

	# Scopes
	scope :active, 			 -> { where('active = ?', true) }
  scope :alphabetical, -> { order('name') }
  
end
