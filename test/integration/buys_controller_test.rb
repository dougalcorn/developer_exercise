require 'test_helper'

class BuysControllerTest < ActionController::IntegrationTest
  context "creating a buy" do
    setup do
      @buy = Factory(:buy)
      visit new_buy_path
    end

    context "with valid data" do
      setup do
        fill_in "site name", :with => "name #{Time.now}"
        fill_in "section", :with => "A section"
        fill_in "ad type", :with => "768x90 banner"
        fill_in "quantity", :with => 1
        fill_in "rate", :with => 2
        select_datetime 1.week.from_now, :from => "start date"
        select_datetime 3.weeks.from_now, :from => "end date"
        click_button "save"
      end
      should_change "Buy.count", :by => 1
      should_change "Placement.count", :by => 1
    end
  end
end
