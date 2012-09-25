class ChangUsers < ActiveRecord::Migration
  def change
      change_column :users, :class_type, :string, :default =>"Noobie"
  end

end
