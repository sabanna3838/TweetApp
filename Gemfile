source 'https://rubygems.org'

ruby "3.0.3"

gem 'rails'
# Use Puma as the app server
gem 'puma', '5.6.2'
# Use SCSS for stylesheets
gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '3.0.4'
gem 'pry-rails', '0.3.4'
# Use jquery as the JavaScript library
gem 'jquery-rails', '4.2.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '5.0.1'
gem 'bcrypt', '3.1.11'

gem 'web-console', '3.4.0', group: :development

group :development, :test do
  gem 'sqlite3', '1.3.13'
  gem 'byebug', '9.0.6', platform: :mri

  gem 'listen', '3.0.8'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '2.0.1'
  gem 'spring-watcher-listen', '2.0.1'
  gem 'rspec-rails', '3.5.1'
end

#本番環境用
group :production do
  gem 'pg'
end