class CreateGroupAlbumizations < ActiveRecord::Migration
  def change
    create_table :group_albumizations do |t|
      t.integer :group_id
      t.integer :album_id
      t.timestamps
    end
  end
end
