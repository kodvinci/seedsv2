class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
        t.text :description
        t.integer :decision_id_1
        t.integer :decision_id_2
        t.integer :story_id
        
      t.timestamps
    end
  end
end
