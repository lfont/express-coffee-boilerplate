home = require './home'
user = require './user'

registerRoutes = (app) ->
    app.get '/', home.index
    app.get '/users', user.list

module.exports = registerRoutes
