# *.shkshk.ru assets: images, styles and scripts

* uses MVCSS for stylesheets
* requires jquery
* includes jquery.smoothscroll, jquery.fancybox, jquery.placeholder and HeroCover

## Installation

Add to Gemfile:

```ruby
gem 'shkshk_assets', require: false, github: 'shkshk/assets'
```

Run:

```bash
bundle
```

Add to `application.styl`:

```scss
//= require shkshk/vendor

@import 'shkshk/bootstrap'
```

And to `application.js.coffee`:

```coffee
//= require shkshk/bootstrap
```
