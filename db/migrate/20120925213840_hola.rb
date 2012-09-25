class Hola < ActiveRecord::Migration
  def change
  	rename_column :transactions, :luid, :user_id
  	rename_column :transactions, :buid, :borrower_id
  	remove_column :borrowers, :buid
  	remove_column :borrowers, :pic_url
  	change_column :borrowers, :sum, :decimal, :default =>0.0
  end

end
