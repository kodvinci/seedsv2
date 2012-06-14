class Removeuid < ActiveRecord::Migration
  def change
      remove_column :lenders, :UID
  end

end
