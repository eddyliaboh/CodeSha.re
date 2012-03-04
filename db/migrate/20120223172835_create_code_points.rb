class CreateCodePoints < ActiveRecord::Migration
  def change
    create_table :code_points do |t|
      t.integer :points
      t.references :post

      t.timestamps
    end
    add_index :code_points, :post_id
  end
end
