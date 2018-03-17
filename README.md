# jekyll-w2m [![Build Status](https://travis-ci.org/kacperduras/jekyll-w2m.svg?branch=master)](https://travis-ci.org/kacperduras/jekyll-w2m) [![Gem Version](https://badge.fury.io/rb/jekyll-w2m.svg)](https://badge.fury.io/rb/jekyll-w2m)

A Jekyll plugin to liberate content from Microsoft Word documents (powered by [word-to-markdown](https://github.com/benbalter/word-to-markdown)).

## Installation

Add this line to your application's Gemfile:
```
$ gem 'jekyll-w2m'
```

And then execute:
```
$ bundle
```

Or install it yourself as:
```
$ gem install jekyll-w2m
```

Then add the following to your site's `_config.yml`
```yaml
plugins:
  - "jekyll-w2m"
```

## Usage
Use the tag as follows in your Jekyll pages, posts and collections:
```
{% w2m /path/to/document.docx %}
```

## License
[MIT](LICENSE)
