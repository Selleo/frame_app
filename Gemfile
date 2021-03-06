source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.4'

# Use sqlite3 as the database for Active Record
# gem 'sqlite3', '~> 1.4'
# Use Postgres as the database for Active Record
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Use Active Storage variant
# gem 'image_processing', '~> 1.2'
# Themed Active Admin with Authentication
gem 'activeadmin'
gem 'activeadmin_addons', github: 'platanus/activeadmin_addons'
gem 'active_material', github: 'vigetlabs/active_material'
gem 'devise'
# Decorators (primarily to simplify AA DSL)
gem 'draper'
# Typical design patterns useful in Ruby on Rails development
gem 'rails-patterns'
# Asynchronous processing + CRON (also important for PubSub)
gem 'sidekiq', '~> 5.2.1'
gem 'sidekiq-cron', '~> 1.0.4'
gem 'sidekiq-status'
# Pub Sub pattern support
gem 'pubsub_on_rails', '0.0.7', github: 'stevo/pubsub_on_rails'

# -------------------------------------------------
# Uncomment gems below for additional capabilities
# or remove after forking repo
# -------------------------------------------------

# State machine
# gem 'aasm'
# HTTP Client
# gem 'httparty'
# Authorization framework
# gem 'cancancan'
# gem 'pundit'
# Error reporting
# gem 'rollbar'
# Model versioning
# gem 'versionist'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # RSpec + FactoryBot as testing framework of choice
  gem 'factory_bot_rails'
  gem 'factory_trace'
  gem 'rspec-rails'
  gem 'spring-commands-rspec'
  # Environment variables from dotfiles
  gem 'dotenv-rails'
  # Generating fake data (mostly for seeds)
  gem 'ffaker'
  gem 'rexml'
  # Ensure uniform code style
  gem 'rubocop', '~> 1.16.0', require: false
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for
  # each request in your browser.
  gem 'rack-mini-profiler', '~> 2.0'
  # Reload classes on file change
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  # gem 'capybara', '>= 3.26'
  # gem 'selenium-webdriver'
  # Mocking HTTP requests
  gem 'webmock'
  # Stubbing environment variables
  gem 'stub_env'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
  # Coverage reports
  gem 'simplecov', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
