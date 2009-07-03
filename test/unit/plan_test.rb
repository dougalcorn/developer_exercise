require 'test_helper'

class PlanTest < ActiveSupport::TestCase
  should_have_many :buys
  should_validate_presence_of :advertiser_name
  should_validate_presence_of :buys

  context "a plan factory" do
    setup do
      @plan = Factory.build(:plan)
    end

    should "build a valid instance" do
      assert @plan.valid?
    end
  end

end
