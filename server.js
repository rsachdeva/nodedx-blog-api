import express from 'express'
import logger from 'morgan'
import errorhandler from 'errorhandler'
import bodyParser from 'body-parser'
import routes from './routes'

console.log("routes is ", routes)

let store = {
  posts: [
    {name: 'Top 10 ES6 Features every Web Developer must know',
      url: 'https://webapplog.com/es6',
      text: 'This essay will give you a quick introduction to ES6',
      comments: [
        {text: 'First comment'},
        {text: 'I think'},
        {text: 'i understand this ,thank you !'}
      ]
    }
  ]
}


let app = express()

app.use(bodyParser.json())
app.use(logger('dev'))
app.use(errorhandler())
app.use((req, res, next) => {
  req.store = store
next()
})

app.get('/posts/:postId', routes.posts.getPost)
app.get('/posts', routes.posts.getPosts)
app.post('/posts', routes.posts.addPost)
app.put('/posts/:postId', routes.posts.updatePost)
app.delete('/posts/:postId', routes.posts.removePost)

app.get('/posts/:postId/comments', routes.comments.getComments)
app.post('/posts/:postId/comments', routes.comments.addComment)
app.put('/posts/:postId/comments/:commentId', routes.comments.updateComment)
app.delete('/posts/:postId/comments/:commentId', routes.comments.removeComment)


app.listen(3000)