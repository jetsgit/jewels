source 'https://rubygems.org'
gem 'rails', '4.2.6'
gem 'pg', '~> 0.15'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'slim-rails'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

# adding for assets pipeline and AngularJS
gem 'angular-rails-templates'

# adding because respond_to put in a gem
gem 'responders', '~> 2.0'


#adding for managing assets
gem 'bower-rails'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

group :development, :test do
  gem 'byebug'
  gem 'teaspoon', git: 'git://github.com/modeset/teaspoon.git'
  gem 'teaspoon-jasmine'
  gem 'rspec'
  gem 'rspec-rails', '~> 2.0'
  gem 'factory_girl_rails', '~> 4.0'
  gem 'capybara'
  gem 'capybara-angular'
  gem 'database_cleaner'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'awesome_print'

  # gem 'selenium-webdriver'
  # gem 'phantomjs'

  gem 'poltergeist'
end

group :development do
  gem 'web-console', '~> 2.0'
end

# Heroku gems for production
group :production, :staging do
  gem 'rails_12factor'
  gem 'rails_stdout_logging'
  gem 'rails_serve_static_assets'
end

