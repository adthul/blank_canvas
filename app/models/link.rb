class Link < ActiveRecord::Base
  has_many :folders, dependent: :destroy
  has_many :users, through: :folders
end
