class Identity < OmniAuth::Identity::Models::ActiveRecord
  attr_accessible :email, :name, :password, :password_confirmation
  validates_presence_of :name
  validates_uniqueness_of :email
  validates :email, :email_format => true
end
