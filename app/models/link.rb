class Link < ActiveRecord::Base
  has_many :folders
  has_many :users, through: :folders
end
