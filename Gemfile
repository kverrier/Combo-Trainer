source 'http://rubygems.org'

gem 'rails', "~>3.2.0.rc2"


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier'
  gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'
end

gem 'jquery-rails'


# Testing Stuff
group :test, :development do
  gem 'database_cleaner'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'guard-rspec'
  gem 'spork', '~> 0.9.0.rc'
  gem 'rb-fsevent'
  gem 'growl_notify'
end


# JS Stuff
gem 'coffee-script'
gem 'haml'
gem 'coffee-filter'
gem 'coffeebeans'

# SQL
gem 'sqlite3', :group => [:development, :test]
gem 'pg', :group => [:prodution]


# Heroku Stuff
gem 'heroku'
gem 'thin'

gem 'bcrypt-ruby'
gem "rack", "~> 1.4.1"

gem 'simple_form'
