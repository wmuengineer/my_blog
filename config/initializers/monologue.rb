Monologue.config do |config|
  config.site_name = "Adam's Blog"
  config.site_subtitle = "Money, Fitness and Code"
  config.site_url = "http://www.adamdbell.com"

  config.meta_description = "Sharing what I learn about money fitness and code."
  config.meta_keyword = "Money, Fitness, Code, Ruby, Rails, Performance"

  config.admin_force_ssl = false
  config.posts_per_page = 10

  config.disqus_shortname = "a8g"

  # LOCALE
  config.twitter_locale = "en" # "fr"
  config.facebook_like_locale = "en_US" # "fr_CA"
  config.google_plusone_locale = "en"

  config.layout               = "layouts/application"


  # ANALYTICS
  config.gauge_analytics_site_id = "YOUR COGE FROM GAUG.ES"
  config.google_analytics_id = "UA-45398650-3"

  config.sidebar = ["latest_posts", "latest_tweets", "categories", "tag_cloud"]


  # SOCIAL
  config.twitter_username = "adamdbell2"
  config.facebook_url = "https://www.facebook.com/engineerbell"
  config.facebook_logo = 'logo.png'
  config.google_plus_account_url = "https://plus.google.com/u/1/.../posts"
  config.linkedin_url = "https://www.linkedin.com/in/adamdevonbell"
  config.github_username = "wmuengineer"
  config.show_rss_icon = true

end
