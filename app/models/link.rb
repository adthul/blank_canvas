class Link < ActiveRecord::Base
  has_many :folders
  has_many :user, through: :folders
end
