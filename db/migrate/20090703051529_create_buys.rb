class CreateBuys < ActiveRecord::Migration
  def self.up
    create_table :buys do |t|
      t.text :site_name

      t.timestamps
    end
  end

  def self.down
    drop_table :buys
  end
end
