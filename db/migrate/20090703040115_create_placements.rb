class CreatePlacements < ActiveRecord::Migration
  def self.up
    create_table :placements do |t|
      t.text :section
      t.text :ad_type
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end

  def self.down
    drop_table :placements
  end
end
