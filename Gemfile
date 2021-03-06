source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.15'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'bootstrap-sass', '~> 3.3.6'
gem 'simple_form'
gem 'ransack'
gem 'momentjs-rails', '~> 2.9', github: 'derekprior/momentjs-rails'
gem 'datetimepicker-rails', github: 'zpaulovics/datetimepicker-rails',
                            branch: 'master', submodules: true

gem 'font-awesome-rails'
gem 'geocoder'
gem 'pry'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Use spring to preload the environent for faster tests
  gem 'spring'
  # Adds spring compatibility to rspec
  gem 'spring-commands-rspec'
  # Use Pry instead of IRB
  gem 'pry-rails'
  # Use Factory Girl for factory support
  gem 'factory_girl_rails'
end

group :development do
  gem 'rspec-rails', '~> 3.0'

  # Use rubocop for linting
  gem 'rubocop', require: false


  # Use faker with factory girl to generate fake data for testing
  gem 'faker'
end

group :test do
  gem 'capybara', '~> 2.5'
  gem 'shoulda-matchers'
end
