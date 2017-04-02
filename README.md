# JSStack

A simple stack data structure in Ruby.

## Installation

Install with
```
gem install JSStack
```

Or in your gems file
```
gem 'JSStack'
```

## Usage

First, require the gem:
```ruby
require 'JSStack'
```

You can create new stacks with any datatype you'd like. Just do:
```ruby
stack = JSStack.new 'This will be first on the stack'
```

You can add items to the stack like so:
```ruby
stack.push 'This will be placed on top of the stack'
```

And you can remove and return a value from the top of the stack:
```ruby
stack.pop
# => 'This will be placed on top of the stack'
```

## Documentation
View the full docs at [here](http://www.rubydoc.info/gems/JSStack/1.0.0/JSStack).

## Support

Please [open an issue](https://github.com/joshsaintjacque/jsstack/issues/new) for support.

## Contributing

Please contribute using [Github Flow](https://guides.github.com/introduction/flow/). Create a branch, add commits, and [open a pull request](https://github.com/joshsaintjacque/jsstack/compare/).