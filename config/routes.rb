Rails.application.routes.draw do
  mount Monologue::Engine, at: '/blog'
  get 'sitemap.xml', :to => 'sitemap#index', :defaults => {:format => 'xml'}
  get '/', to: redirect('/blog')
  root 'home#index'
end
