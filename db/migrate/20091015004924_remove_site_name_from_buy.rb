class RemoveSiteNameFromBuy < ActiveRecord::Migration
  def self.up
    remove_column :buys, :site_name
  end

  def self.down
    add_column :buys, :site_name, :string
  end
end
