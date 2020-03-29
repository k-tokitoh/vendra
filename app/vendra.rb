require "bundler/setup"
Bundler.require(*[:default, ENV['CLI_ENV']].compact)

require_relative "../config/loader"
Loader.new.setup

# TODO: DB関係の記述は切り出したい。
ADAPTER = 'sqlite3'
DBFILE  = File.expand_path('../../db/vendra.sqlite3', __FILE__)

ActiveRecord::Base.establish_connection(adapter: ADAPTER, database: DBFILE)
