class Defaultclass < ActiveRecord::Migration
  def change
      change_column :users, :class_type, :string, :default =>"Noobie"
      change_column :lenders, :class_type, :string, :default =>"Noobie"
  end

end
