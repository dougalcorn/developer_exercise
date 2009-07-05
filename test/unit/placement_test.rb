require 'test_helper'

class PlacementTest < ActiveSupport::TestCase
  should_belong_to :buy

  should_validate_presence_of :section
  should_validate_presence_of :ad_type
  should_validate_presence_of :start_date
  should_validate_presence_of :end_date

  context "a placement factory" do
    setup do
      @placement = Factory.build(:placement)
    end

    should "creates a valid object" do
      assert @placement.valid?
    end
  end

  test "a placement should have a price" do
    @placement = Placement.new
    assert_equal 0, @placement.cost
  end

  test "a placement's cost should be its rate times its quantity" do
    @placement = Placement.new
    @placement.expects(:rate).returns(100)
    @placement.expects(:quantity).returns(5)

    assert_equal 500, @placement.cost
  end
end
