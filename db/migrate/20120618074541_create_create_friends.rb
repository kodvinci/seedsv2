class CreateCreateFriends < ActiveRecord::Migration
  def change
    create_table :create_friends do |t|
        t.integer :UID
        t.integer :FUID
      t.timestamps
    end
  end
end
