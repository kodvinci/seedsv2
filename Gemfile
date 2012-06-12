source 'http://rubygems.org'

gem 'rails'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end

gem 'jquery-rails'

gem 'devise'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger

group :development do
#  gem 'rspec-rails' #, '2.6.1'
end

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
  gem 'ruby-debug19', :require => 'ruby-debug'
end

group :production do
    #gems specifically for Heroku go here
  gem "pg"
  gem 'therubyracer'
  gem 'webrat', '0.7.1'
  
end
