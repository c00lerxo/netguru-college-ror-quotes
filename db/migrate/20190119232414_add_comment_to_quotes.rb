class AddCommentToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_reference :quotes, :comment, foreign_key: true
  end
end
