require 'test_helper'

class BuyTest < ActiveSupport::TestCase
  should_belong_to :plan
  should_have_many :placements
  should_have_many :sites
  should_validate_presence_of :placements
  should_validate_presence_of :site_name

  context "a buy factory" do
    setup do
      @buy = Factory.build(:buy)
    end

    should "create a valid object" do
      assert @buy.valid?
    end
  end

  test "a buy should have a cost equal to the sum of its placements' costs" do
    @placements = [mock(:cost => 30), mock(:cost => 20)]
    @buy = Buy.new
    @buy.expects(:placements).returns(@placements)

    assert_equal 50, @buy.cost
  end
end
