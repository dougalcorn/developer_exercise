require 'test_helper'

class BuyTest < ActiveSupport::TestCase
  should_belong_to :plan
  should_belong_to :site
  should_have_many :placements
  should_validate_presence_of :placements
  should_validate_presence_of :site_name

  context "a buy factory" do
    setup do
      @buy = Factory.build(:buy)
    end

    should "create a valid object" do
      assert @buy.valid?, pretty_error_messages(@buy)
    end
  end

  test "a buy should have a cost equal to the sum of its placements' costs" do
    @placements = [mock(:cost => 30), mock(:cost => 20)]
    @buy = Buy.new
    @buy.expects(:placements).returns(@placements)

    assert_equal 50, @buy.cost
  end

  context "with a site" do
    setup { @site = Factory(:site) }

    context "creating a buy with an existing site name" do
      setup do
        @buy = Factory(:buy, :site_name => @site.name)
      end
      should_not_change "Site.count"
      should_change "Buy.count", :by => 1
      should "assign the site to the buy" do
        assert_equal @site, @buy.site
      end
    end
  end
end
