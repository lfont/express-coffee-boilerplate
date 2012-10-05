express   = require 'express'
ejsLocals = require 'ejs-locals'
path      = require 'path'
routes    = require './routes'

app = module.exports = express()

app.configure ->
  app.engine 'ejs', ejsLocals

  app.set 'port', process.env.PORT || 3000
  app.set 'views', path.join(__dirname, 'views')
  app.set 'view engine', 'ejs'

  app.use express.favicon()
  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use express.static(path.join __dirname, 'public')
  app.use app.router

app.configure 'development', ->
  app.use express.logger('dev')
  app.use express.errorHandler()

app.configure 'production', ->
  app.use express.logger()
  app.use express.errorHandler()

routes(app);

app.use (req, res) ->
  res.statusCode = 404
  res.render '404',
             title: 'Express - 404'
             url: req.originalUrl
