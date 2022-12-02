class AddPostToHearts < ActiveRecord::Migration[7.0]
  def change
    add_reference :hearts, :post, null: false, foreign_key: true
  end
end
