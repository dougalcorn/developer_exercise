class Buy < ActiveRecord::Base
  belongs_to :plan
  has_many :placements
  validates_presence_of :placements
end
