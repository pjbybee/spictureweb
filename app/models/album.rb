class Album < ActiveRecord::Base
  attr_accessible :name, :description, :user_id
  belongs_to :user

  has_many :p2as
  has_many :pictures, :through => :p2as, :uniq => true

  has_many :group_albumizations
  has_many :groups, :through => :group_albumizations

  def public_url
     "http://ec2-23-23-233-62.compute-1.amazonaws.com/albums/" + self.id.to_s + "/public_view"
  end

end
