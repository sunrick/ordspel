# Ordspel

The world's best language translator for Ruby. The gem currently supports English to: Swedish, Spanish, Irish, "Belgian", "Swiss", French, German, Japanese, Chinese, Russian and Welsh.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ordspel'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ordspel

## Usage

```ruby

# List of methods to call on any string.

 "hello".swedify
 # => "hällö"

 "i eat chicken".spanify
 # => "i eato chickeno"
 
 "I didn't do my homework".japanify
 # => !!!SURPRISE!!!


```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/ordspel. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

