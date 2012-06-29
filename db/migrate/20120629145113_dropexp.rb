class Dropexp < ActiveRecord::Migration
  def change
      remove_column :users, :exp
      remove_column :lenders, :exp
  end

end
