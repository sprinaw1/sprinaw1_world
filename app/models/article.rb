class Article < ApplicationRecord
    # Relationships
    has_one :category
  
    # Scopes
    scope :alphabetical, -> { order('title') }
    scope :active,       -> { where(active: true) }
  
    # Validations
    validates_presence_of :title
    validates_presence_of :content
  end
