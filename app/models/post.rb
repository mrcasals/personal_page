class Post < ActiveRecord::Base

  # Validations
  validates :title, :body, presence: true

  # Relations
  has_and_belongs_to_many :tags

end
