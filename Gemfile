source 'http://rubygems.org'

gem 'rails'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'
#gem 'mysql2'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
#  gem 'sass-rails' #, "  ~> 3.1.0"
#  gem 'coffee-rails' #, "~> 3.1.0"
#  gem 'uglifier'	#(commented out the above 3 lines Leo 4/12)
end

gem 'jquery-rails'

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
  #  gem 'therubyracer'
#  gem 'rspec-rails' #, '2.6.1'
#  gem 'webrat' #, '0.7.1'
  
end
