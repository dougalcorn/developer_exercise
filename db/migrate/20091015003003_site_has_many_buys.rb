class SiteHasManyBuys < ActiveRecord::Migration
  def self.up
    add_column :buys, :site_id, :integer
  end

  def self.down
    remove_column :buys, :site_id
  end
end
