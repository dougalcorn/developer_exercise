class Buy < ActiveRecord::Base
  has_many :placements
  validates_presence_of :placements
end
