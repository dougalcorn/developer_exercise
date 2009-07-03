require 'test_helper'

class PlacementTest < ActiveSupport::TestCase
  context "a Placement" do
    setup do
      @placement = Factory.build(:placement)
    end

    should "have a section, ad_type and start and end dates" do
      assert @placement.section
      assert @placement.ad_type
      assert @placement.start_date
      assert @placement.end_date
    end
  end
end
