class RemoveLikersCountFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :likers_count, :integer
  end
end
