class Quote < ApplicationRecord
  before_save :change_author
  validates :content, presence: true, length: 400

  def change_author
    if self.author.blank?
      self.author = "Anonym"
    end
  end
end
