class ModiUsers < ActiveRecord::Migration
  def change
      add_column :users, :credit, :decimal, :default => 0.0
  end

end
