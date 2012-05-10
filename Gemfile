source 'http://rubygems.org'

gem 'rails', '3.1.1'

gem 'google_drive'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.4'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :test, :development do
  gem 'rspec-rails'
  gem 'sqlite3'
  gem 'ruby-debug19'
  gem 'pivotal_git_scripts'
end

group :test do
  gem 'factory_girl_rails'
  gem 'vcr'
  gem 'webmock'
end

group :production do
  gem 'pg'
end
