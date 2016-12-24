require 'rails_helper'

RSpec.feature "Sitemaps", type: :feature do
  it "has a sitemap" do
    post = create(:monologue_post)
    visit '/sitemap.xml'
    expect(page).to have_content 'jibber-1'
  end
end
