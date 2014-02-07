class Folder < ActiveRecord::Base
  belongs_to :user
  belongs_to :link

  # def unique?(user,link_id)
  #   matched = Folder.where(user_id: user.id, link_id: link_id)

  #   matched.blank? ? return true : return false
  # end
end
