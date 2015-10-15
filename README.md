# Ordspel

[![Gem Version](https://badge.fury.io/rb/ordspel.svg)](https://badge.fury.io/rb/ordspel)
[![Build Status](https://travis-ci.org/sunrick/ordspel.svg?branch=master)](https://travis-ci.org/sunrick/ordspel)

The world's best language translator for Ruby. The gem currently supports Latin based alphabet translations for: Swedish, Danish, Norwegian, Spanish, Irish, "Belgian", "Swiss", French, German, Japanese, Chinese, Russian, Welsh, Dutch, Portuguese, "American", and "Canadian".

Started working on some regional accents: Boston.

Obviously I'm rocking the stereotypes (just a bit of fun)! Would love to "support" more languages and make the gem even more "international", regional dialects could be cool for English countries. Pull requests welcome!

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

### List of methods to call on any string.

# Languages

  .swedify
  .norwegify
  .danify
  .spanify
  .irishify
  .belgify
  .swissify
  .frenchify
  .germanify
  .japanify
  .chinify
  .russify
  .welshify
  .dutchify
  .portugify
  .americanify
  .canadify

# Regional

  .bostonify

# Some examples

 "hello".swedify
 # => "hällö"

 "i eat chicken".spanify
 # => "i eato chickeno"

 "I didn't do my homework".japanify
 # => !!!SURPRISE!!!

 "Eating baguettes is my favorite.".frenchify
 # => "Eating euhhh baguettes euhhh is euhhh my euhhh favorite. euhhh"

 "This is the best chocolate in the world".swissify
 # => "JA Zo, Zis Eühhh Is Eühhh The Eühhh Best Eühhh Chocolate Eühhh In Eühhh The Eühhh World Eühhh"

 "I think that the french are the worst.".germanify
 # => "JA Zo, I Zink Zat Ze French Are Ze Worst."

 "this is a sentence".portugify
 # => "this is ã sentenção"

 ### METHOD CHAINING??????? ###

 "This is a crazy weird sentence that has been translated into many languages".frenchify.portugify.swedify
 # => "This äuhhh is äuhhh å äuhhh çråzy äuhhh wäird äuhhh säntänçåö äuhhh thåt äuhhh ås äuhhh bään äuhhh trånslåtäd äuhhh intö äuhhh måny äuhhh långuågäs äuhhh"

```

## Version History

[Read about the gem history here.](HISTORY.md)

## Pull Requests

Would love to have pull requests come my way! Let's make the world even more global.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

