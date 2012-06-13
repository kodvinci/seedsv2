class Luidtolenders < ActiveRecord::Migration
  def change
      add_column :lenders, :luid, :integer
  end

end
