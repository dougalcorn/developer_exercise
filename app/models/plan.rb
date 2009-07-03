class Plan < ActiveRecord::Base
  has_many :buys
  validates_presence_of :buys, :advertiser_name
end
