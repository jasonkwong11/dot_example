# DotExample

<img src="http://www.cs.utah.edu/~gk/atwork/img/hevequip2.gif"></img>

It's become very common practice to use a tool like the `dotenv` gem to manage environment variables locally. However on a team it is easy for people to be out of date on which ENV variables they need in their `.env` file and sometimes it isn't obvious that htis is where a problem arises. Adding the keys to the README and/or to a `.env.example` file is one way to share the ENV variables needed with the rest of the team, but like many kinds of documentation it is easy for these files to get out of date.

Enter `dot_example` make sure you always have the most up to date environment variables by automatically checking for new ENV variables when you pull new code and automatically adding to a `.env.example` every time a team member adds new variables.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dot_example'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dot_example

## Usage

dot_example ships with three rake task, `setup`, `sync` and `check_vars`

### Setup

```
rake dot_example:setup
```

Will setup 


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/smcabrera/dot_example. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

