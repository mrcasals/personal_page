class Post < ActiveRecord::Base

  # Validations
  validates :title, :body, presence: true

  # Relations
  has_and_belongs_to_many :tags

  # TAGGABLE

  # Fake attribute to make it easier to enter tags in the edition form.
  # Returns all tags in an easy-to-display manner.
  def tag_names
    @tag_names || tags.all.map(&:name).join(', ')
  end

  # Assigns tags to a note from a comma-separated string.
  # It finds or creates by name each tag and assigns it to the note.
  def tag_names=(value)
    names = value.split(',').map(&:strip)

    # Save the tag names as an ivar so that #tag_names retrieves them in case
    # of validation errors.
    @tag_names = names.join(', ')

    self.tags = names.map do |tag|
      Tag.find_by_name(tag) || Tag.create(name: tag)
    end
  end

end
