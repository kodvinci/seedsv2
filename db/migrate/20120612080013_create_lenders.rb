class CreateLenders < ActiveRecord::Migration
  def change
    create_table :lenders do |t|
        t.integer :UID
        t.string :first_name
        t.string :last_name
        t.string :class_type
        t.integer :exp
        t.integer :user_id
        t.decimal :credit
        
        t.timestamps
    end
  end
end
