class Book < ActiveRecord::Base

  # Validations
  validates :title, :description, :author, :total_pages, presence: true
  validates :rating, inclusion: {in: 0..10}

end
