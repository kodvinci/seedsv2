class Modlenders < ActiveRecord::Migration
  def change
      add_column :lenders, :gender, :string
      change_column :lenders, :credit, :decimal, :default =>0.0
  end

end
