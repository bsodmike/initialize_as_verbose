# initialize_as_verbose

## Installation

Add this line to your Rails 3.2.x application's Gemfile:

```
gem 'initialize_as_verbose'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install initialize_as_verbose
```

## Usage

Boot your Rails environment with the `BOOT_VERBOSE` environment variable
set as `true`

```
-> % BOOT_VERBOSE=true rails server

# OR

-> % BOOT_VERBOSE=true rails console
```

Whenever your Rails environment is booted, all initializer points will
be printed to `$stdout`.

## License

This project rocks and uses MIT-LICENSE.
