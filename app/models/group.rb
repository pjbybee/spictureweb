class Group < ActiveRecord::Base
  attr_accessible :name, :description, :user_id
  belongs_to :user

  has_many :c2gs
  has_many :contacts, :through => :c2gs, :uniq => true

  has_many :group_albumizations
  has_many :albums, :through => :group_albumizations, :uniq => true
end
