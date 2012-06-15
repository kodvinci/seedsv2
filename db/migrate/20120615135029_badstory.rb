class Badstory < ActiveRecord::Migration
  def change
      drop_table :stories
  end

end
