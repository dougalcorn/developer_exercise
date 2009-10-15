require 'test_helper'

class SitesControllerTest < ActionController::IntegrationTest

  context "creating a site" do
    setup do
      @site = Factory(:site)
      visit new_site_path
    end

    context "with valid data" do
      setup do
        fill_in "name", :with => "name #{Time.now}"
        fill_in "url", :with => "http://example.com"
        click_button "save"
      end
      should_change "Site.count", :by => 1
    end
  end
end
