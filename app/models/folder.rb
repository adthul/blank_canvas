class Folder < ActiveRecord::Base
  belongs_to :user
  belongs_to :link

  def self.destroy_folder(u_id, f_name)
    binding.pry
    Folder.destroy_all(user_id: u_id, folder_name: f_name)
  end
end
