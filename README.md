# Ordspel

The world's best language translator for Ruby. The gem currently supports Latin based alphabet translations for: Swedish, Danish, Norwegian, Spanish, Irish, "Belgian", "Swiss", French, German, Japanese, Chinese, Russian, Welsh, Dutch, Portuguese, "American", and "Canadian".

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

# List of methods to call on any string.

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
 # => "Eating euhhh baguettes euhhh is euhhh my euhhh favorite. euhhh"

 "I think that the french are the worst.".germanify
 # => "JA Zo, I Zink Zat Ze French Are Ze Worst."

 "this is a sentence".portugify
 # => "this is ã sentenção"

 ### METHOD CHAINING??????? ###

 "This is a crazy weird sentence that has been translated into many languages".frenchify.portugify.swedify
 # => "This äuhhh is äuhhh å äuhhh çråzy äuhhh wäird äuhhh säntänçåö äuhhh thåt äuhhh ås äuhhh bään äuhhh trånslåtäd äuhhh intö äuhhh måny äuhhh långuågäs äuhhh"

```

## Pull Requests

Would love to have pull requests come my way! Let's make the world even more global.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

