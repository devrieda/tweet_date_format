// tweet_date.js
// version : 0.1.0
// author : Derek DeVries
// license : MIT

var moment = require("moment");

exports.tweetDistanceOfTime = function(fromTime, toTime) {
  var toTime   = toTime  || new Date(), 
      fromTime = moment(fromTime).valueOf(), 
      toTime   = moment(toTime).valueOf(), 
      minutes  = Math.round(Math.abs(toTime - fromTime) / 60 / 1000), 
      seconds  = Math.round(Math.abs(toTime - fromTime) / 1000);

  if (minutes < 2) {
    return seconds < 60 ? seconds + "s" : "1m";

  } else if (minutes < 60) {
    return minutes + "m";

  } else if (minutes < 1440) {
    return Math.round(minutes / 60.0) + "h"

  } else {
    var thisYear = (new Date).getYear() == (new Date(fromTime)).getYear();
    return moment(fromTime).format(thisYear ? "D MMM" : "D MMM YY");
  }
}
