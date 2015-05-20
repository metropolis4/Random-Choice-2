// Generated by CoffeeScript 1.9.2
(function() {
  var app, bodyParser, express, indexController, server;

  express = require('express');

  bodyParser = require('body-parser');

  indexController = require('./controllers/index.js');

  app = express();

  app.set('view engine', 'jade');

  app.set('views', __dirname + '/views');

  app.use(express["static"](__dirname + '/public'));

  app.use(bodyParser.urlencoded({
    extended: false
  }));

  app.get('/', indexController.index);

  app.get('/templates/:templateid', function(req, res) {
    return res.render('templates/' + req.params.templateid);
  });

  server = app.listen(3001, function() {
    return console.log("Express server listening on port " + (server.address().port));
  });

}).call(this);
