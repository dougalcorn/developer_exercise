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

  test "a plan should have a cost equal to the sum of its buys' costs" do
    Buy.any_instance.expects(:cost).returns(500).times(2)
    @plan = Plan.new
    @plan.expects(:buys).returns([Buy.new, Buy.new])

    assert_equal 1000, @plan.cost
  end
end
