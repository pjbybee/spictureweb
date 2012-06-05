class GroupAlbumization < ActiveRecord::Base
  belongs_to :group
  belongs_to :album
end
