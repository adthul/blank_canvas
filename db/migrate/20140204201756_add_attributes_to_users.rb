class AddAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_name, :string
    add_index :users, :user_name
    add_column :users, :description, :text
  end
end
