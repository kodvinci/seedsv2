source 'http://rubygems.org'

gem 'rails'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end

gem 'jquery-rails'
gem 'devise'

group :development, :test do
  # Pretty printed test output
  gem 'sqlite3'
  gem 'turn', :require => false
#  gem 'ruby-debug19', :require => 'ruby-debug'
end

group :production do
    #gems specifically for Heroku go here
  gem "pg"
  gem 'therubyracer-heroku', '0.8.1.pre3'

 # gem 'webrat', '0.7.1'
 # gem 'thin'
end
