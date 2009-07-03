class Placement < ActiveRecord::Base
  validates_presence_of :section, :ad_type, :start_date, :end_date
end
