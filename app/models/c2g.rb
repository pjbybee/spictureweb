class C2g < ActiveRecord::Base
  attr_accessible :group_id, :contact_id
  
  belongs_to :contact
  belongs_to :group
end
