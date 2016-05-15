# Jekyll::NewRelic

Add [New Relic Browser](https://newrelic.com/browser-monitoring) to your Jekyll site.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jekyll-newrelic'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-newrelic

## Usage

First, add the necessary configuration to to `_config.yml`. You can find these values by looking at the very end of the javascript code generated by New Relic. Check the documentation [here](https://docs.newrelic.com/docs/browser/new-relic-browser/installation-configuration/copying-your-browser-monitoring-license-key-app-id) for more details.

```yaml
newrelic:
  licenseKey: "abcdef1234" # Use the actual licenseKey
  applicationID: "12345678" # Use the actual applicationID
```

Then add the following tag after the following line where you'd like the NewRelic code to be executed. NewRelic recommends including this at the end of the HEAD. Add the following before `</head>` in `_includes/head.html`

```liquid
{% newrelic %}
```

If you have multiple environments, you may only want to use New Relic in a specific environments. Here's an example of how to only use New Relic in your `production` environment:

```liquid
{% if jekyll.environment == "production" %}{% newrelic %}{% endif %}
```

The above example is useful for making sure you don't load the New Relic code when performing local development or in other non-production environments. This can throw your numbers off.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/brint/jekyll-newrelic. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
