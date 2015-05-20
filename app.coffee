express = require 'express'
bodyParser = require 'body-parser'
indexController = require './controllers/index.js'

app = express()

app.set 'view engine', 'jade'
app.set 'views', __dirname + '/views'
app.use express.static __dirname + '/public'
app.use bodyParser.urlencoded { extended: false}

app.get '/', indexController.index
app.get '/templates/:templateid', (req,res) ->
  res.render 'templates/' + req.params.templateid

server = app.listen 3001, ->
  console.log "Express server listening on port #{server.address().port}"
