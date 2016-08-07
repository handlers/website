---
layout:     post
title:      A Capital Bikeshare Gem
date:       2016-08-07 09:00:00
summary:    A Ruby wrapper for CaBi data
categories: 
  - computers
  - ruby
  - bikes
---

It feels strange that it took this long to write a gem, but I just [released one](https://github.com/handlers/capital-bikeshare-ruby/releases)! It's called [`capital-bikeshare`](https://github.com/handlers/capital-bikeshare-ruby), and it's a wrapper that makes dealing with Capital Bikeshare (DC's bikeshare system) data easier.

The gem grabs station data (published in XML) and structures it into Ruby objects so you can do:

```ruby
> require 'capital-bikeshare'
> client = CapitalBikeshare::Client.new
> client.fetch # gets station data
> client.stations.first
=> #<CapitalBikeshare::Station:0x007fd7ae8728b8 @id=1...
```

Hopefully this helps people develop more Capital Bikeshare-related applications.*

I just slapped a `v1.0` tag on it but I assure you that there many bugs; if you find any, please open an issue.

<hr>

\* If anyone's taking requests, I'd really like an Android app with two screens:

1. trying to find a bike
2. trying to park a bike

Spotcycle crashes for me like all the time.
