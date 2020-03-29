# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem "zeitwerk"
gem "thor"

group :development, optional: true do
  gem "pry-byebug"
end

group :test, optional: true do
  gem "rspec"
  gem "aruba"
end
