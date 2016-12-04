require 'rails_helper'

RSpec.feature "Sitemaps", type: :feature do
    it "has a sitemap" do
      visit '/sitemap.xml'
      expect(page).to have_content 'jibberish-1'
    end


end
