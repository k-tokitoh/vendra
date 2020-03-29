require "bundler/setup"
Bundler.require(*[:default, ENV['CLI_ENV']].compact)

require_relative "../config/loader"
Loader.new.setup

binding.pry if ENV['CLI_ENV'] == "development"
