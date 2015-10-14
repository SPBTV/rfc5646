# Rfc5646


Parse [RFC 5646](http://tools.ietf.org/html/rfc5646) locales. 
This code extracted from [shuttle](https://github.com/square/shuttle) codebase.

Add this line to your application's Gemfile:

```ruby
gem 'rfc5646'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rfc5646

## Usage

```ruby
locale == Rfc5646::Locale.from_rfc5646(params[:locale])
```

The ISO 639 code for the base language (e.g., "de" for German).

```ruby
locale.iso639
```

The RFC 5646 code for the orthography (e.g., "Arab" for Arabic script).

```ruby
locale.script
```

The ISO 3166 country code for the regional dialect (e.g., "BZ" for Belize). Some special 
values are also supported (e.g., "013" for Central America).

```ruby
locale.region
```

The variant or nested subvariant of this locale. The full path to a subvariant is listed as 
a top-level Array; an example is `["sl", "rozaj", "1994"]`, indicating the 1994 standardization of the 
Resian orthography of the Rozaj dialect of Slovenian (in case we should ever want to localize one of 
our projects thusly). Variants can be regional or temporal dialects, or orthographies, or both, 
and are very specific.

```ruby
locale.variants
```

The dialect (not associated with a specific region or period in time) specifier. For example, 
"yue" indicates Yue Chinese (Cantonese).

```ruby
locale.extended_language
```

The user-defined extensions applied to this locale. The meaning of these is not specified in 
the spec, and left up to private use, and is ignored by this class, but stored for completeness.

```ruby
locale.extensions
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/SPBTV/rfc5646. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [Apache 2.0](http://www.apache.org/licenses/).

