#!/usr/bin/env bash

#get post id
curl "http://localhost:3000/posts/1"

#gets post data
curl "http://localhost:3000/posts"

#posts post data
curl -i -H "Content-Type: application/json" -X POST -d @new.json  "http://localhost:3000/posts"
clear
curl "http://localhost:3000/posts"

#updates post data at specific id
curl -H 'Content-Type: application/json' -X PUT -d '{"name": "Number 4", "url":"http://god.com/es6", "text": "JMD"}' "http://localhost:3000/posts/0"

###deletes post data at specific id
curl -X DELETE "http://localhost:3000/posts/0"
