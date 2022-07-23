# frozen_string_literal: true

source "https://rubygems.org"

# Specify your gem"s dependencies in environ-sorbet.gemspec
gemspec

group :test do
  gem "codecov", require: false
  gem "rspec", "~> 3.0"
  gem "simplecov", require: false
end

group :development, :test do
  gem "rake", "~> 13.0"
  gem "rubocop", "~> 1.21"
  gem "rubocop-rspec", "~> 2.12.1"
  gem "sorbet", "~> 0.5.10201"
end
