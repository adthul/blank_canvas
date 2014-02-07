class Folder < ActiveRecord::Base
  belongs_to :user
  belongs_to :link

  def destroy_folder(u_id, f_name)
    Folder.destroy_all(user_id: u_id, folder_name: f_name)
  end
end
