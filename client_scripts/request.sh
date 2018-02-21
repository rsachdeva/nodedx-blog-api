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

#deletes post data at specific id
curl -X DELETE "http://localhost:3000/posts/0"

#Nested Comments

# get nested comment
curl http://localhost:3000/posts/0/comments

# post nested comment
curl  -i -H "Content-Type: application/json" -X POST -d @new_comment.json http://localhost:3000/posts/0/comments

# updated nested comment
curl -H 'Content-Type: application/json' -X PUT -d '{"text": "Updated Comment"}' http://localhost:3000/posts/0/comments/0

# delete nested comment
curl -X DELETE http://localhost:3000/posts/0/comments/0