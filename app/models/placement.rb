class Placement < ActiveRecord::Base
  belongs_to :buy
  validates_presence_of :section, :ad_type, :start_date, :end_date

  def cost
    rate * quantity
  end
end
