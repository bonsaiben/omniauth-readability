# OmniAuth Readability

This gem contains the Readability Reader API strategy for OmniAuth.


## Before You Begin

You should have already installed OmniAuth into your app; if not, read the [OmniAuth README](https://github.com/intridea/omniauth) to get started.

Now sign in into your [Readability account](http://www.readability.com) and grab your Reader API keys. Take note of your Reader API Key and Secret.

## Using This Strategy

First start by adding this gem to your Gemfile:

    gem 'omniauth-readability'

If you need to use the latest HEAD version, you can do so with:

    gem 'omniauth-readability', :github => 'bonsaiben/omniauth-readability'

Next, tell OmniAuth about this provider. For a Rails app, your `config/initializers/omniauth.rb` file should look like this:

    Rails.application.config.middleware.use OmniAuth::Builder do
      provider :readability, "CONSUMER_KEY", "CONSUMER_SECRET"
    end

Replace CONSUMER_KEY and CONSUMER_SECRET with the appropriate values you obtained from your Readability account earlier.


## License

Copyright (c) 2013 by Benjamin Sullivan

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
