class Wassup < ActiveRecord::Migration
  def change
      add_column :users, :exp, :decimal, :default =>1.0
      add_column :lenders, :exp, :decimal, :default =>1.0
  end

end
