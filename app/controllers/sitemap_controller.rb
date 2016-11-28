class SitemapController < ApplicationController
  layout nil
  def index
    headers['Content-Type'] = 'application/xml'
    respond_to do |format|
      format.xml do
        @posts = Monologue::Post.published
        @default_last_mod = @posts.pluck(:updated_at).first
      end
    end
  end
end
