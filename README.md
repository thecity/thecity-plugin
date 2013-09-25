# The City Plugin

Provides methods to decrypt data coming from The City plugin framework.

## Installation

Tested with Ruby 1.9.3

Add this line to your application's Gemfile:

    gem 'thecity-plugin'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install thecity-plugin

## Usage

The City Plugin framework will post data to your plugin to identify the user and provide a key for calling further City APIs.

The data that is posted consists of two pieces of data:

1.  city_data - encrypted data from The City
2.  city_data_iv - an initialization vector used to decrypt the data (along with your app secret key)

This gem provides a method to take your city_date, city_data_iv, and secret and it decrypts and returns the data.

example usage:

    $ Thecity::Plugin::decrypt_city_data(ENCRYPTED_STRING, IV, SECRET)

NOTE: SECRET is actually the first 32 characters of your secret key

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
