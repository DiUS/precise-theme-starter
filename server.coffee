
fs = require('fs')
path = require('path')

testProfile = path.join(__dirname, 'exampleProfile.json')
testPortfolio = path.join(__dirname, 'examplePortfolio.json')

express = require('express')
app = express()

app.get '/profile', (req, res) ->
  index = require('./index')

  fs.readFile testProfile, {encoding: 'utf-8'}, (err, profile) ->
    if !err
      res.send index.renderProfile(JSON.parse(profile))
    else
      console.log err

app.get '/portfolio', (req, res) ->
  index = require('./index')

  fs.readFile testPortfolio, {encoding: 'utf-8'}, (err, portfolio) ->
    if !err
      res.send index.renderPortfolio(JSON.parse(portfolio))
    else
      console.log err

module.exports = app
