class AddListingToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :listing, :string
  end
end
