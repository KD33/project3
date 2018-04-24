class StaticPagesController < ApplicationController
  def index
  end

  def privacy
    puts 'helloooooooo'
    puts ENV['RAILS_SERVE_STATIC_FILES'].present?
  end

end
