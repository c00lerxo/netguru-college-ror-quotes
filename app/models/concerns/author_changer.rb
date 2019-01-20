module AuthorChanger
  extend ActiveSupport::Concern

  def change_author
    if self.author.blank?
      self.author = "Anonym"
    end
  end
end