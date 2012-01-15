class Post < ActiveRecord::Base

  # Validations
  validates :title, :body, presence: true

end
