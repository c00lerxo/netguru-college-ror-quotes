class Quote < ApplicationRecord
  include AuthorChanger

  before_save :change_author
  validates :content, presence: true, length: { minimum: 10, maximum: 400 }
  has_many :comments, dependent: :destroy
end