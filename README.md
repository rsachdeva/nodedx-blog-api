# API Server

To install and start the API server, run the following commands in the root directory:

* `npm install`
* `npm start`

## ES6+ Style code

Uses babel so in code import and export es6+ style could be used.

### Use curl to CRUD at endpoints

From project root:

cd client_script
sh ./request.sh

new.json file is for a new blog entry in a separate file so can take large blogs.
new_comment.json is a for a new nested comment entry in a post as an example.

# Posts async handling
This is just to show Promise use in case this involved asynchronous handling. 
For the current context, it could be done in synchronous way. Comments are kept synchronous.
