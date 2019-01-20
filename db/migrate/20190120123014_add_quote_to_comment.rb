class AddQuoteToComment < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :quote, foreign_key: true, index: true
  end
end
