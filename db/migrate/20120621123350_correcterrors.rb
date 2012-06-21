class Correcterrors < ActiveRecord::Migration
  def change
      rename_column :borrowers, :uid, :buid
      drop_table :create_friends
  end

end
