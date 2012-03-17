class AddMyemailToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fieldname, :string
  end
end
