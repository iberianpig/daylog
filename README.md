# README

Keep your motivation log, this is a sample apps for using rails4/restAPI/OAuth , you can access from android see https://github.com/iberianpig/daylog-android.  

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

# API
| Verb  | URI Pattern    |Controller#Action
|-------|----------------|--------------------
| GET   | /logs.json     |logs#index
| POST  | /logs.json     |logs#create
| GET   | /logs/:id.json |logs#show
| PATCH | /logs/:id.json |logs#update
| PUT   | /logs/:id.json |logs#update
| DELETE| /logs/:id.json |logs#destroy
