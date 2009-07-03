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
end
