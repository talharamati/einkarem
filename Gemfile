source 'https://rubygems.org'

gem 'rails', '3.2.8'

gem 'newrelic_rpm' # for monitoring (and for heroku keep-up pings)

group :development do
  gem 'sqlite3'
  gem 'sqlite3-ruby', :require => 'sqlite3'
end

# production only
group :production do
  gem 'pg'
end

gem 'bcrypt-ruby', :require => 'bcrypt'
gem 'paperclip'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'best_in_place'
gem 'nested_form'

#gem 'dropbox-sdk'
gem "paperclip-dropbox"

gem 'thin' # web server

gem "squeel" # for easy sql selections