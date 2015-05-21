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

port = process.env.PORT || 3001
server = app.listen port, ->
  console.log "Express server listening on port #{server.address().port}"
