require 'test_helper'

class PlacementTest < ActiveSupport::TestCase
  context "a Placement" do
    setup do
      @placement = Placement.new
    end

    should "exist" do
      assert @placement
    end
  end
end
