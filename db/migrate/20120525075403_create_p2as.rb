class CreateP2as < ActiveRecord::Migration
  def change
    create_table :p2as do |t|
      t.integer :picture_id
      t.integer :album_id
      t.timestamps
    end
  end
end
