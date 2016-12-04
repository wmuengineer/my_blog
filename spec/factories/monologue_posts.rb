FactoryGirl.define do
  factory :monologue_post, class: 'Monologue::Post' do
    Monologue::Post.create(published: true, user_id: 1, title: "jibberish-1", content: "<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectet fficitur.</p>\r\n", url: "2016/jibberish-1", published_at: "2016-11-03 00:00:00")
  end
end
