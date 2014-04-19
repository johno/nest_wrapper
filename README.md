# NestWrapper

A wrapper for the `nest_thermostat` gem. So, a wrapper that wraps a wrapper.

## Installation

Add this line to your application's Gemfile:

    gem 'nest_wrapper'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nest_wrapper

## Usage

### Login to the API with your credentials:

```ruby
NestWrapper.login ENV['NEST_EMAIL'], ENV['NEST_PASSWORD']
```

### Get status information:

```ruby
state = NestWrapper.device.state
state.temp      # => 'Set Temperature'
state.curr_temp # => 'Current Temperature'
state.away      # => true || false
state.leaf      # => true || false
state.humidity  # => 'Humidity'

# etc.
```

### Get device information:

```ruby
device = NestWrapper.device
device.name        # => 'Name of nest device'
device.zip         # => 'ZIP'
device.country     # => 'COUNTRY'
device.config_data # => { blob: :of_data }
```

## Contributing

1. Fork it ( http://github.com/johnotander/nest_wrapper/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
