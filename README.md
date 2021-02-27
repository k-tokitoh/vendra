# Vendra

Vendra is a CLI imitating a vendor machine.

It's just a personal practice to create gems etc., inspired by [a workshop problem](http://devtesting.jp/tddbc/?TDDBC%E5%A4%A7%E9%98%AA2.0%2F%E8%AA%B2%E9%A1%8C).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'vendra'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install vendra

## Usage

```
$ vendra help
Commands:
  vendra example             # An example command.
  vendra help [COMMAND]      # Describe available commands or one specific command
  vendra insert CACHE_VALUE  # Insert a coin or a bill.
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/k-tokitoh/vendra.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
