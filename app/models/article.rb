class Article < ApplicationRecord
  # Relationships
  has_many :categories

  # Scopes
  scope :alphabetical, -> { order('title') }
  scope :active,       -> { where(active: true) }

  # Validations
  validates_presence_of :title
  validates_presence_of :content
end
