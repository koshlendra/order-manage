source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.0'
# Use sqlite3 as the database for Active Record

group :development, :test do
	gem 'mysql2'
end
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby
gem 'omniauth', '~> 1.2'
gem 'omniauth-auth0', '~> 1.1'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

 # if you plan to use drag and drop
# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development
#gem 'byebug'
gem 'pry-nav'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'devise'
# Use unicorn as the app server
# gem 'unicorn'
group :production do 
	gem 'rails_12factor' 
	gem 'pg'
end
gem "therubyracer"
gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS

gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'kaminari'
gem 'jquery-datatables-rails', '~> 3.3.0'
gem 'bootstrap-colorpicker-rails', :require => 'bootstrap-colorpicker-rails',
                          :git => 'git://github.com/alessani/bootstrap-colorpicker-rails.git'
gem 'carrierwave'
gem 'elasticsearch-model', git: 'git://github.com/elasticsearch/elasticsearch-rails.git'
gem 'elasticsearch-rails', git: 'git://github.com/elasticsearch/elasticsearch-rails.git'
gem 'unicorn'
# Use debugger
gem "select2-rails"
gem 'pry' , group: [:development, :test]
gem 'pry-debugger', group: [:development, :test]
gem "mini_magick"
gem 'cancancan'
gem 'rolify'
gem "nested_form"
group :development, :test do
  gem 'rspec-rails', '~> 3.0'
end
group :development do
  gem 'capistrano-rails', '~> 1.1.1'
end