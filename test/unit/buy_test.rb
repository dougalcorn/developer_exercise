require 'test_helper'

class BuyTest < ActiveSupport::TestCase
  should_belong_to :plan
  should_have_many :placements
  should_validate_presence_of :placements

  context "a buy factory" do
    setup do
      @buy = Factory.build(:buy)
    end

    should "create a valid object" do
      assert @buy.valid?
    end
  end
end
