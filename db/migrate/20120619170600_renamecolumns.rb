class Renamecolumns < ActiveRecord::Migration
  def change
      rename_column :transactions, :UID, :luid
      rename_column :transactions, :BID, :buid
      rename_column :users, :UID, :uid
  end

end
