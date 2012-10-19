source 'https://rubygems.org'

gem 'rails', '~> 3.2'
gem "jquery-rails", "~>1.0.19"

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2'
  gem 'coffee-rails', '~> 3.2'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platform => :ruby

  gem 'uglifier', '>= 1.0.3'
end



# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# why unicorn over thin?
# http://blog.railsonfire.com/2012/05/06/Unicorn-on-Heroku.html
# Use unicorn as the app server
gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test, :development do
  gem "capybara"
  gem "capybara-webkit"
  gem 'factory_girl_rails', "4.0"
end

# use the recommended `expect` syntax over `should`
# http://myronmars.to/n/dev-blog/2012/06/rspecs-new-expectation-syntax
gem "rspec", ">= 2.11", :group => [:test]
gem "rspec-rails", ">= 2.0.1", :group => [:development, :test]
gem "shoulda-matchers", :group => [:test]
gem "fabrication", :group => [:test]
gem "database_cleaner", :group => [:test]
gem "launchy", :group => [:test]


gem "devise"
gem "haml", ">= 3.0.0"
gem "haml-rails"
gem "simple_form"
gem "rmagick"
gem "carrierwave"

