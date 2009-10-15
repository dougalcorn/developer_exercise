class Site < ActiveRecord::Base
  has_many :buys
  validates_presence_of :name, :url
end
