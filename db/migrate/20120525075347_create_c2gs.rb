class CreateC2gs < ActiveRecord::Migration
  def change
    create_table :c2gs do |t|
      t.integer :contact_id
      t.integer :group_id
      t.timestamps
    end
  end
end
