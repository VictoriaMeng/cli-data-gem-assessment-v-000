## GameGem

This CLI Gem scrapes a list of the top 30 games from the Steam "Top-Sellers" list (URL at http://store.steampowered.com/) and prints them out to the console.

Once the list if printed, users may view games from the list by entering the game's number. This allows them to view the final discounted price of each game.

Then, they may return to the main menu and view other games from the list or exit the app.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'game_gem'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install game_gem

## Usage

Enter `run` to run the app.

Enter (1-30) to view game details at the main menu.

When viewing a game's specific details, enter 'y' to to view another game, or 'n' to quit the app.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'VictoriaMeng'/game_gem.
