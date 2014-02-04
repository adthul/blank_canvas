class CreateFolders < ActiveRecord::Migration
  def change
    create_table :folders do |t|
      t.string :folder_name
      t.integer :user_id
      t.integer :link_id

      t.timestamps
    end
  end
end
