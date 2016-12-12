FactoryGirl.define do
  factory :monologue_post, class: 'Monologue::Post' do
    title "jibberish-1"
    content "<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectet fficitur.</p>"
    url "2016/jibber-1"
    published_at "2016-11-03 00:00:00"
    published 'true'
    user_id "1"
  end
end

# Monologue::Post.create(published: true, user_id: 1, title: "jibberish-1", content: "<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectet fficitur.</p>\r\n", url: "2016/jibberish-1", published_at: "2016-11-03 00:00:00")
