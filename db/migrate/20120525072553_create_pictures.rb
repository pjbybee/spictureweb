class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.integer :id
      t.string  :image
      t.text    :description
      t.integer :user_id
      t.timestamps
    end
  end
end 
