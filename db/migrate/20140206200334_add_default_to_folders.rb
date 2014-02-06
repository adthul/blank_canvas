class AddDefaultToFolders < ActiveRecord::Migration
  def change
    change_column :folders, :folder_name, :string,default: "Links"
  end
end
