class AddPlanIdToBuys < ActiveRecord::Migration
  def self.up
    add_column :buys, :plan_id, :integer
  end

  def self.down
    remove_column :buys, :plan_id
  end
end
