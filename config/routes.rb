Rails.application.routes.draw do
  mount Monologue::Engine, at: '/'
  get 'sitemap.xml', :to => 'sitemap#index', :defaults => {:format => 'xml'}
end
