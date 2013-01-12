# Tweet Date Format

Twitter's [Developer Display Requirements](https://dev.twitter.com/terms/display-requirements) dictate the required format that tweets are displayed in 3rd party apps and websites. 

One part of this requirement is to format the *Tweet Timestamp* consistent with their guidelines. The code here includes an Objective-C category for NSDate and a Rails helper method for doing the formatting. 


## Example 

Objective-C category usage: 

```objective-c
[[NSDate date] tweetDistanceOfTime:tweetedAt];
```


Ruby helper method: 

```ruby
<%= tweet_distance_of_time(tweeted_at) %>
```

## LICENSE

Copyright (c) 2012 Derek DeVries

Released under the [MIT License](http://www.opensource.org/licenses/MIT)
