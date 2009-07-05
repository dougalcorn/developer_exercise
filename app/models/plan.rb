class Plan < ActiveRecord::Base
  has_many :buys
  validates_presence_of :buys, :advertiser_name

  def cost
    buys.inject(0) do |n, b|
      n + b.cost
    end
  end
end
