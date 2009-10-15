class Plan < ActiveRecord::Base
  has_many :buys
  validates_presence_of :buys, :advertiser_name

  named_scope :for_site, lambda { |site| 
    { :joins =>  "LEFT JOIN sites ON sites.id = buys.site_id LEFT JOIN buys ON buys.plan_id = plans.id", :conditions => ["sites.name = ?", site.name] }
  }

  def cost
    buys.inject(0) do |n, b|
      n + b.cost
    end
  end
end
