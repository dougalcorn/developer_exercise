require 'test_helper'

class SiteTest < ActiveSupport::TestCase
  should_have_many :buys
  should_require_attributes :name, :url
end
