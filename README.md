# WhitelistedRecord
[![Build Status](https://travis-ci.org/ej2015/whitelisted-record.svg?branch=master)](https://travis-ci.org/ej2015/whitelisted-record)
[![CodeFactor](https://www.codefactor.io/repository/github/ej2015/whitelisted-record/badge)](https://www.codefactor.io/repository/github/ej2015/whitelisted-record)
[![Maintainability](https://api.codeclimate.com/v1/badges/bba5f2507a29312c2680/maintainability)](https://codeclimate.com/github/ej2015/whitelisted-record/maintainability)
This gem adds a little decorator for your objects that allow whitelist of methods. Possible user cases include when you need to dynamically display whitelisted attributes in your view based on some criteria.

## Usage
Simply create a decorator like this to whitelist what you want visible:
```
user = WhitelistedRecord(user, [:first_name, :last_name, :age])
```

## Configuration
You can set default whitelist with a configuration. For example, in a Rails app you can put this in an initializer:
```
WhitelistedRecord.configure do |config|
  config.whitelist = [:first_name, :last_name]
end
```


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'whitelisted-record'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install whitelisted-record

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/whitelisted-record.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

