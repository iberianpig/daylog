# README

Keep your motivation log, this is a sample apps for using rails4/restAPI/OAuth , you can access from android see https://github.com/iberianpig/daylog-android.  

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

## You need to create new App on Facebook before trying Login with OAuth.

# Deploy and Setting Daylog

0. Require: heroku toolbelt and regist to heroku(check official heroku document)  

1. Create a new app on https://developers.facebook.com/apps/ 

2. Get APP ID and APP SECRET on dashboard

3. Type code below in your terminal
  `heroku config:set FB_CONSUMER_KEY={ APP ID } --app { YOURAPPNAME }`
  `heroku config:set FB_CONSUMER_SECRET={ APP SECRET } --app { YOURAPPNAME }`

4. Access deployed your APP!


# API
| Verb  | URI Pattern    |Controller#Action
|-------|----------------|--------------------
| GET   | /logs.json     |logs#index
| POST  | /logs.json     |logs#create
| GET   | /logs/:id.json |logs#show
| PATCH | /logs/:id.json |logs#update
| PUT   | /logs/:id.json |logs#update
| DELETE| /logs/:id.json |logs#destroy

