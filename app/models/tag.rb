class Tag < ActiveRecord::Base

  # Relations
  has_and_belongs_to_many :posts

  # Validations
  validates :name, presence: true
  validates :name, uniqueness: true

end
