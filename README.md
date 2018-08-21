# RoversimAbrophy

This gem serves as a solution to an OOP problem where it is required to
build out a class heirarchy to simulate and predict the movement of a
rover on mars

## Installation and Usage

There are three ways to install and use the gem:

### clone from github

```
git clone https://github.com/abrophy/roversim.git
```

after cloning the repo onto your computer, enter the directory and run:
```
bundle install
```
To install the dev dependencies.

A sample input file has been provided with the repo as
`roversim_input.example`.

You can then use rake to process this sample input file:

```
rake run roversim_input.example
```

simply replace the sample input filename with your own if desired.

### install gem for command line usage

The gem is hosted on rubygems so it can be installed to your environment
through a simple gem install:

```
gem install roversim_abrophy
```

to process an input file call from command line via

```
roversim abrophy input_file_name
```

### requiring it into an existing ruby project

Add the gem to your gemfile:

```ruby
gem 'roversim_abrophy', '1.2.0'
```

it can then be required and used to process inputs already split into an
array:

```ruby
require 'roversim_abrophy'

input_array = [
  '88',
  '12 E',
  'MMLMRMMRRMML'
]

RoversimAbrophy.process(input_array)
#=>'3 3 S'
```

## Testing

After cloning the repo and installing dev dependencies with bundle, you can run tests against the codebase through:

```
rake test
```

## Notes on Design and testing

While working out the design for these classes the most interesting
relationship I found was between the tracers and the rover class. I
inject the rover class into the tracers when moving so that the tracers
are responsible for knowing how to update the coordinates of the rover.

The Tracer class is called when performing turns and returns the correct
new tracer class depending on the turn which also holds the correct
movement behavior for the new direction.

Actually generating the correct tracer for the rover class on
initialization is done with a case statement, though I know this is an
OOP smell, given the time constraint and the class heirarchy ( there
will likely be no new cardinal directions added anytime soon and the
rover operates on a two dimensional grid ), I don't see anything wrong
with the implementation.

I used RSpec to cover unit and integration tests, and used rubocop to test
code style across the project.

The only complaint from rubocop I haven't dealt with is the length of
the #process_instructions method in the controller.

This is due to the message parsing happening in the controller class.

If the message structure or nature of the input were to change in the
future I would implement a new message parsing class to deal with this
issue, but for now am happy with the implementation.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
