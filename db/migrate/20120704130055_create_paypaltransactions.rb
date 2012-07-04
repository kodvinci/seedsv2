class CreatePaypaltransactions < ActiveRecord::Migration
  def change
    create_table :paypaltransactions do |t|
        t.integer :uid, :null =>false
        t.string :payKey, :null =>false, :unique =>true
        t.decimal :amount, :null =>false

      t.timestamps
    end
  end
end
