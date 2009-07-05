class AddQuantityAndRateToPlacements < ActiveRecord::Migration
  def self.up
    add_column :placements, :quantity, :integer, :default => 1
    add_column :placements, :rate, :integer, :default => 0
  end

  def self.down
    remove_column :placements, :rate
    remove_column :placements, :quantity
  end
end
