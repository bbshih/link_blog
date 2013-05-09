require 'spec_helper'

feature 'Creating Links' do
	before do
		visit '/'
		click_link 'New Link'
	end

	scenario "can create a link" do
		fill_in 'URL', :with => 'http://stackoverflow.com'
		fill_in 'Description', :with => "Great site for troubleshooting"
		click_button 'Create Link'
		page.should have_content('Link has been created')
	end

	scenario "can not create a link without a URL" do
		click_button 'Create Link'
		page.should have_content("Link has not been created")
		page.should have_content("Url can't be blank")
	end
end
