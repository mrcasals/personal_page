class Tag < ActiveRecord::Base

  # Relations
  has_and_belongs_to_many :posts

end