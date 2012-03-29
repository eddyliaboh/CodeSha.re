class RemoveLocationFromPosts < ActiveRecord::Migration
  def up
    remove_column :posts, :location
  end

  def down
    add_column :posts, :location, :string
  end
end
