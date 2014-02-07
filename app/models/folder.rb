class Folder < ActiveRecord::Base
  belongs_to :user
  belongs_to :link

  def self.unique_folder?(user,folder)
    matched = Folder.where(user_id: user.id, link_id: folder.link_id, folder_name: folder.folder_name)
    matched.blank?
  end

  def self.destroy_folder(u_id, f_name)
    Folder.destroy_all(user_id: u_id, folder_name: f_name)
  end
end
