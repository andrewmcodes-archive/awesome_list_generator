# AwesomeListGenerator

Output a markdown file based on supplied data and a liquid template.

## Installation

```sh
gem install awesome_list_generator
```

## Usage

```sh
awesome_list_generator generate README.md --data data.yml --template template.liquid
```

`awesome_list_generator generate <output> --data <data> --template <template>`

- `output`: `String` - name and location of the desired output file
- `--data <data>`: `String` - name and location of your **YAML** input file
- `--template <template>`: `String` - name and location of our **Liquid** template file

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/andrewmcodes/awesome_list_generator. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/andrewmcodes/awesome_list_generator/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the AwesomeListGenerator project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/andrewmcodes/awesome_list_generator/blob/master/CODE_OF_CONDUCT.md).
