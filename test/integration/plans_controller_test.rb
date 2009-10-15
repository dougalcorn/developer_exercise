require 'test_helper'

class PlansControllerTest < ActionController::IntegrationTest
  context "new plan" do
    setup do
      @buy = Factory(:buy)
      @buy2 = Factory(:buy)
      visit new_plan_path
    end
    context "creating with valid data" do
      setup do
        fill_in "advertiser name", :with => "Tighty Whities"
        select @buy.site_name, :from => "buys"
        click_button "save"
      end
      should "not have any errors" do
        assert_not_contain "error"
      end
      should_change "Plan.count", :by => 1
    end

    # webrat doesn't handle multi-selects well and I didn't want to muck with it
    # context "with multiple buys" do
    #   setup do
    #     fill_in "advertiser name", :with => "Tighty Whities"
    #     select @buy.site_name, :from => "buys"
    #     select @buy2.site_name, :from => "buys"
    #     click_button "save"
    #   end
    #   should_change "Plan.count", :by => 1
    #   should_assign_to :plan
    #   should "have multiple buys for the plan" do
    #     assert_equal 2, assigns(:plan).buys.size
    #   end
    # end

    context 'creating without a buy' do
      setup do
        fill_in "advertiser name", :with => "Tighty Whities"
        click_button "save"
      end
      should "contain errors" do
        assert_contain "error"
      end
    end
  end
end
