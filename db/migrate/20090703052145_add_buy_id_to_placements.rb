class AddBuyIdToPlacements < ActiveRecord::Migration
  def self.up
    add_column :placements, :buy_id, :integer
  end

  def self.down
    remove_column :placements, :buy_id
  end
end
