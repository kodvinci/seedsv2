class Bidtobadges < ActiveRecord::Migration
  def change
      rename_column :badges, :BID, :bid
  end
end
