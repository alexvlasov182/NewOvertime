# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'rails', '~> 5.0.1'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'byebug'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_girl_rails', '~> 4.7'
  gem 'rspec-rails', '~> 3.0'
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'rubocop', '~> 1.25.0'
  gem 'rubocop-performance', '~> 1.0'
  gem 'rubocop-rspec', '~> 2.0'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'administrate', '~> 0.17.0'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
gem 'bourbon'
gem 'devise', '~> 4.2'
gem 'dotenv-rails', group: %i[development test]
gem 'gritter', '1.2.0'
gem 'kaminari', '~> 1.2', '>= 1.2.2'
gem 'psych', '< 4'
gem 'pundit', '~> 1.1'
gem 'ransack', '~> 2.0.0'
gem 'twilio-ruby', '~> 4.11', '>= 4.11.1'

ruby '2.7.6'
