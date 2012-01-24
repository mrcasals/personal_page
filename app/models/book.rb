class Book < ActiveRecord::Base

  # Validations
  validates :title, :description, :rating, :author, :total_pages, presence: true

end
