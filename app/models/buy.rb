class Buy < ActiveRecord::Base
  belongs_to :plan
  has_many :placements
  validates_presence_of :placements
  validates_presence_of :site_name

  def cost
    placements.inject(0) do |n, p|
      n + p.cost
    end
  end
end
