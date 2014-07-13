source 'https://rubygems.org'

gem 'rails', '4.0.3'
gem 'bootstrap-sass', '2.1'
gem 'bcrypt-ruby', '3.0.1'
gem 'redcarpet'

group :development, :test do
	gem 'sqlite3'
	gem 'rspec-rails', '2.11.0'
	gem 'pry'
end

group :production do
	gem 'pg', '0.15.1'
	gem 'rails_12factor', '0.0.2'
end

group :development do
	gem 'annotate','2.5.0'
end

group :assets do
	gem 'sass-rails', '~> 4.0.0'
	gem 'uglifier', '>= 1.3.0'
	gem 'coffee-rails', '~> 4.0.0'
end

gem 'jquery-rails'

group :test do
	gem 'capybara', '1.1.2'
	gem 'factory_girl_rails','4.1.0'
	gem 'cucumber-rails', '1.2.1', :require => false
	gem 'database_cleaner', '0.7.0'
end


gem 'turbolinks'

gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end
