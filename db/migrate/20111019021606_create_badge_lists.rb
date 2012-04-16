class CreateBadgeLists < ActiveRecord::Migration
  def change
    create_table :badge_lists do |t|
      t.integer :luid
      t.integer :bid

      t.timestamps
    end
  end
end
