class AddThesyntaxToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :syntax, :string
  end
end
