source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.4"

gem "rails", "~> 6.0.2", ">= 6.0.2.2"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 4.1"
gem "sass-rails", ">= 6"
gem "webpacker", "~> 4.0"
gem "jbuilder", "~> 2.7"
gem "bootsnap", ">= 1.4.2", require: false

gem "standardrb"
gem "devise"
gem "skeleton-rails", git: "https://github.com/helios-technologies/skeleton-rails"

group :development, :test do
  gem "factory_bot_rails"
  gem "pry"
  gem "rspec-rails"
  gem "launchy"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
end

group :test do
  gem "capybara"
  gem "database_cleaner-active_record"
  gem "shoulda-matchers"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
