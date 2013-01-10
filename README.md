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

(The MIT License)

Copyright © 2012 [Derek DeVries](https://github.com/devrieda/)

Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the "Software"),
to deal in the Software without restriction, including without
limitation the rights to use, copy, modify, merge, publish, distribute,
sublicense, and/or sell copies of the Software, and to permit persons
to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.
