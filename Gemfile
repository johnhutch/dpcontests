source 'http://rubygems.org'

gem 'rails', '3.2.15'

group :assets do
  gem 'sass-rails',   '~> 3.2.6'
  gem 'coffee-rails', '~> 3.2.2'
  gem 'uglifier', '>= 1.3.0'
end

gem 'jquery-rails', '~> 2.0.2'
gem 'simple_form'
gem 'mysql2'
gem 'capistrano', '~> 2.13.5'
gem 'json'

gem 'execjs' #trying to solve assets:precompile error on deploy
gem 'therubyracer', :platforms => :ruby # added to avoid javascript errors on deploy

gem 'cancancan', '~> 1.7'
gem 'devise', '~> 2.2.3'
gem 'omniauth-twitter'
gem 'omniauth-facebook'

gem 'redcarpet'
gem 'paperclip', :git => "git://github.com/thoughtbot/paperclip.git"
gem 'nested_form', :git => 'https://github.com/ryanb/nested_form.git'
gem 'rails_config'
gem 'stamp'

gem 'jquery-fileupload-rails'
gem 'compass-rails'
gem 'bootstrap-sass'
gem 'autoprefixer-rails'
gem 'susy'

gem 'acts_as_votable', '~> 0.10.0'

group :development, :test do
    gem 'sqlite3'
    gem 'rspec-rails'
    gem 'letter_opener'
    gem 'thin'
    gem 'better_errors', '~> 1.1.0'
    gem 'coderay', '~> 1.0.5' # pinned at 1.0.5 to avoid conflict between better_errors and guard http://stackoverflow.com/questions/19322183/guard-giving-uninitialized-constant-listenturnstile-nameerror-error
    gem 'binding_of_caller'
    gem 'meta_request'
end

group :test do
    gem 'factory_girl'
    gem 'factory_girl_rails', :require => false
    gem 'capybara'
    gem 'selenium-webdriver'
    gem 'guard', '>=2.1.0'
    gem 'guard-rspec'
    gem 'spring'
    gem 'guard-spring'
    gem 'launchy'
    gem 'rb-fsevent' # mac-only gem for guard auto-detect. remove if on another OS
    gem 'database_cleaner'
end
