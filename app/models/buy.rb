class Buy < ActiveRecord::Base
  belongs_to :plan
  belongs_to :site
  has_many :placements
  validates_presence_of :placements
  validates_presence_of :site_name

  def cost
    placements.inject(0) do |n, p|
      n + p.cost
    end
  end

  def site_name; site.name rescue ""; end
  def site_name=(name)
    self.site = Site.find_or_create_by_name(name)
  end
end
