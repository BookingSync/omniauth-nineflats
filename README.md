# OmniAuth 9Flats

This is an OmniAuth 1.0 strategy for authenticating to 9Flats. To
use it, you'll need to sign up for an OAuth2 Application ID and Secret
on the [9Flats Application's Registration Page](https://www.9flats.com/us/client_applications).

## Installing

Add to your `Gemfile`:

```ruby
gem 'omniauth-nineflats'
```

Then `bundle install`.

## Usage

`OmniAuth::Strategies::9Flats` is simply a Rack middleware. Read the OmniAuth 1.0 docs for detailed instructions: https://github.com/intridea/omniauth.

Here's a quick example, adding the middleware to a Rails app in `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :nineflats, ENV['NINEFLATS_KEY'], ENV['NINEFLATS_SECRET']
end
```

## Supported Rubies

OmniAuth Roomorama is tested under 1.8.7, 1.9.2, 1.9.3, 2.0.0, Ruby-head, Ruby Enterprise Edition, JRuby (1.8 and 1.9 mode) and Rubinius (1.8 and 1.9 mode).

[![CI Build
Status](https://secure.travis-ci.org/BookingSync/omniauth-nineflats.png)](http://travis-ci.org/BookingSync/omniauth-nineflats)

## License

Copyright (c) 2013 Sébastien Grosjean and [BookingSync.com](http://www.bookingsync.com)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
