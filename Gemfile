source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'alert_message'
gem 'coffee-rails', '~> 4.2'
gem "devise", ">= 4.7.1"
gem 'jbuilder', '~> 2.5'
gem "jquery-rails"
gem 'jquery-ui-rails'
gem 'rails', '~> 5.1.6'
gem 'rails_admin', '~> 1.4', '>= 1.4.2'
gem "rails_admin_rollincode", git: "https://github.com/giovaneperlin/rails_admin_theme.git"
gem "rails-env"
gem "rails_admin-i18n"
gem "rails-i18n"
gem 'sqlite3'
gem "modernizr-rails"
gem 'puma', '~> 4.3'
gem 'pg'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'turbolinks', '~> 5'
gem "bourbon", "~> 4.2.7"
gem "neat", "1.8.0"

group :development, :test do
  gem 'binding_of_caller'
  gem "better_errors"
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
