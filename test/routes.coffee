should  = require('chai').should()
request = require 'supertest'
app     = require '../build/app'

describe 'Routes', ->
    describe 'GET /', ->
        it 'respond the index view', (done) ->
            request(app)
                .get('/')
                .end((err, res) ->
                    res.text.should.have.string 'Welcome to Express'
                    done())
