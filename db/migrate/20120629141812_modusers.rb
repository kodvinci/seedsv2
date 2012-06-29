class Modusers < ActiveRecord::Migration
  def change
      change_column :users, :exp, :integer, :default =>1
      change_column :users, :uid, :integer, :uniqueness =>true, :length => { :within => 4..10 }
      change_column :lenders, :exp, :integer, :default =>1
      change_column :lenders, :luid, :integer, :uniqueness =>true, :length => { :within => 4..10 }
      
  end

end
