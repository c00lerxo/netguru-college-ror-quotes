class Comment < ApplicationRecord
  include AuthorChanger

  before_save :change_author
  validates :text, presence: true, length: { minimum: 10, maximum: 400 }
  belongs_to :quote
end
