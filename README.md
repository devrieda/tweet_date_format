# Tweet Date Format

Twitter's [Developer Display Requirements](https://dev.twitter.com/terms/display-requirements) dictate the required format that tweets are displayed in 3rd party apps and websites. 

One part of this requirement is to format the *Tweet Timestamp* consistent with their guidelines. The code here includes an Objective-C category for NSDate and a Rails helper method for doing the formatting. 

The output for the tweet dates will be something like: 

```
# less than a minute
16s

# less than an hour
10m

# less than 24 hours
13h

# for older than 24 hours
9 May

# for older than a year
5 Dec 12
```

## Examples

Objective-C category usage: 

```objective-c
[[NSDate date] tweetDistanceOfTime:tweetedAt];
```


Ruby helper method: 

```ruby
<%= tweet_distance_of_time(tweeted_at) %>
```

Javascript function: 

```bash
$> npm install
```

```javascript
tweetDate = require("./tweet_date");
var formatted = tweetDate.tweetDistanceOfTime("2013-05-06 12:30:00");
```

## LICENSE

Copyright (c) 2013 Derek DeVries

Released under the [MIT License](http://www.opensource.org/licenses/MIT)
