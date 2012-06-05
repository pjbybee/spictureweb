class Contact < ActiveRecord::Base
  attr_accessible :name, :notes, :user_id, :email
  belongs_to :user
  has_many :c2gs
  has_many :groups, :through => :c2gs, :uniq => true
end
