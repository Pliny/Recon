source 'https://rubygems.org'

gem 'rails', '3.2.8'
gem 'pg'

gem 'json'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem "guard"
  # gem "Platform", "~> 0.4.0"
  # gem "open4", "~> 1.3.0"
  # gem "popen4", "~> 0.1.2"
end

group :development do
  gem 'guard-livereload'
  gem 'rack-livereload'
end

group :test do
  gem "spork", '1.0.0rc3'
  gem 'guard-spork'
  gem 'vcr'
  gem 'fakeweb'
  gem 'timecop'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
end

gem 'jquery-rails'
gem 'rspec-rails'
gem 'haml'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use debugger
# gem 'ruby-debug'
