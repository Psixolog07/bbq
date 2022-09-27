source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.4"

gem "aws-sdk-s3"
gem "bootsnap", require: false
gem "cssbundling-rails"
gem "devise-i18n"
gem "devise"
gem "image_processing", ">= 1.2"
gem "jbuilder"
gem "jsbundling-rails"
gem "mailjet"
gem "omniauth-github"
gem "omniauth-google-oauth2"
gem "omniauth-rails_csrf_protection"
gem "omniauth"
gem "puma", "~> 5.0"
gem "pundit"
gem "rails-i18n"
gem "rails", "~> 7.0.3", ">= 7.0.3.1"
gem "resque"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"

group :development do
  gem "bcrypt_pbkdf", ">= 1.0", "< 2.0"
  gem "capistrano-bundler", "~> 1.2"
  gem "capistrano-passenger", "~> 0.2"
  gem "capistrano-rails", "~> 1.2"
  gem "capistrano-rbenv", "~> 2.1"
  gem "capistrano-resque", "~> 0.2.3", require: false
  gem "capistrano", "~> 3.8"
  gem "ed25519", ">= 1.2", "< 2.0"
  gem "letter_opener"
  gem "net-ssh", ">= 6.0.2"
end

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "rspec-core"
  gem "rspec-rails"
  gem "rspec"
  gem "sqlite3", "~> 1.4"
end

group :production do
  gem "pg"
  gem "redis"
end

group :test do
  gem "capybara"
  gem "pundit-matchers"
  gem "selenium-webdriver"
  gem "webdrivers"
end
