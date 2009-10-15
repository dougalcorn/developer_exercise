class AddSiteAttributes < ActiveRecord::Migration
  NEW_FIELDS = { :name => :string, :url => :string, :contact_id => :integer}
  def self.up
    NEW_FIELDS.each do |attr, type|
      add_column :sites, attr, type
    end
  end

  def self.down
    NEW_FIELDS.keys.each do |attr|
      remove_column :sites, attr
    end
  end
end
