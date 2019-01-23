lita-onewheel-reddit-alert
--------------------

[![Build Status](https://travis-ci.org/onewheelskyward/lita-onewheel-reddit-alert.png?branch=master)](https://travis-ci.org/onewheelskyward/lita-onewheel-reddit-alert)
[![Coverage Status](https://coveralls.io/repos/onewheelskyward/lita-onewheel-reddit-alert/badge.png)](https://coveralls.io/r/onewheelskyward/lita-onewheel-reddit-alert)

TODO: Add a description of the plugin.

Installation
------------
Add lita-onewheel-reddit-alert to your Lita instance's Gemfile:

``` ruby
gem "lita-onewheel-reddit-alert"
```

Configuration
-------------

Lita.configure do |config|
  config.handlers.onewheel_loggly.api_key = '016450909327860943906:3a3e35xbkzu'
  config.handlers.onewheel_loggly.base_uri = 'AIzaSyAlTbxqcZOlb3M-QXR4PCYpS2U1rfgwSlU'
  config.handlers.onewheel_loggly.query = 'medium'
end

Usage
-----

Well, firstly, Google's API explorer can be a little trick.


Going Forward
-------------

I'm going to implement postgres and make sure I can track everything I want to track.  Testing the limits of the api calls since I get so few.
