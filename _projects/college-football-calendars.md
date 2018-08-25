---
layout: project
title: College Football Calendars
excerpt: Top 25 and team specific calendars built by an automated system running on AWS Lambda and S3. 
---

I like having the college football games that matter on my calendar. This makes it easy to see what games are happening by glancing at my iPhone or my Apple Watch. This is much better than flipping through channels to see what is on or opening an app to check the scoreboard. The calendar includes the TV network for the game in the event location so you can easily find the game on TV. It will also update with the scores for the games.

Feel free to subscribe in your calendar app with the links below. If you'd like to see additional calendars you can send me a request on [Twitter](https://twitter.com/hathaway) and I'll try to add it to this list when I have time. Otherwise, the code is available so you could also try to build them on your own.

## Calendars

### College Football Top 25 Calendar

This calendar is updated each week with the games for the AP top 25 teams. Since the top 25 changes every week, it only includes games for the upcoming week. This can contain 20+ games so I don't keep this calendar showing all of the time but it is nice to toggle on/off on Saturday's.

[College Football Top 25 Calendar](webcal:://hathaway.cc/calendars/college-football-top-25.ics)

### College Football Top 25 Matchups Calendar

This calendar is similar to the Top 25 calendar but only shows games between two top 25 teams. I like to keep this one active on my calendar because these are usually the best games of the week.

[College Football Top 25 Matchups Calendar](webcal:://hathaway.cc/calendars/college-football-top-25-matchups.ics)

### Notre Dame Football Calendar


[Notre Dame Football Calendar](webcal:://hathaway.cc/calendars/notre-dame-football.ics)

### Ohio State Football Calendar

[Ohio State Football Calendar](webcal:://hathaway.cc/calendars/ohio-state-football.ics)

## Screenshots

![College Football Calendar on iPhone](/assets/images/iphone-college-football-calendar.jpeg "College Football Calendar on iPhone")

![College Football Top 25 Calendar](/assets/images/college-football-top-25-calendar.png "College Football Top 25 Calendar")

![College Football Top 25 Matchups Calendar](/assets/images/college-football-top-25-matchups-calendar.png "College Football Top 25 Matchups Calendar")

## About this project

While ESPN does provider calendar feeds for individual teams, for some reason they don't provide a single feed for all of the top 25 teams. I've also experienced weird issues with some of their calendars including other games for random teams. This got annoying enough to build my own system for college football calendar feeds.

This system includes a [Node.js script](https://github.com/hathaway/college-football-calendar) that utilizes the [ical-generator](https://github.com/sebbo2002/ical-generator), [cheerio](https://github.com/cheeriojs/cheerio), and [request-promise](https://github.com/request/request-promise) libraries to collect information from ESPN and generate an .ics file for a list of games. The .ics file is then saved to an AWS S3 bucket which hosts this site behind an AWS CloudFront CDN. 

In order to automate the process of building these .ics files, I built the script so it would run as an AWS Lambda function. Then a CloudWatch event triggers the Lambda function to run nightly and rebuild the calendar files. This makes the entire process very efficient so the code isn't constantly retrieving data that doens't change very often but also keeps the calendars up-to-date daily.