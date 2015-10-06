# Ordspel

The world's best language translator for Ruby. The gem currently supports English to: Swedish, Spanish, Irish, "Belgian", "Swiss", French, German, Japanese, Chinese, Russian, Welsh and Dutch.

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

 "Eating baguettes is my favorite.".frenchify
 # => "Eating euhhh baguettes euhhh is euhhh my euhhh favorite. euhhh"

 "I think that the french are the worst.".germanify
 # => "JA Zo, I Zink Zat Ze French Are Ze Worst."

```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

