class CreateUserComments < ActiveRecord::Migration
  def change
    create_table :user_comments do |t|
      t.string :commenter
      t.text :body
      t.references :post

      t.timestamps
    end
    add_index :user_comments, :post_id
  end
end
