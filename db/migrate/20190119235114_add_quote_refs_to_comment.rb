class AddQuoteRefsToComment < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :quote, index: true
  end
end
