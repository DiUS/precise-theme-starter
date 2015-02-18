require "coffee-script/register"
fs = require("fs")
Markdown   = require("node-markdown").Markdown
Handlebars = require("handlebars")

Handlebars.registerHelper 'md', Markdown

renderProfile= (profile) ->
  css = fs.readFileSync(__dirname + "/style.css", "utf-8")
  template = fs.readFileSync(__dirname + "/profile.template", "utf-8")
  Handlebars.compile(template)
    css: css,
    profile: profile

renderPortfolio= (portfolio) ->
  css = fs.readFileSync(__dirname + "/style.css", "utf-8")
  template = fs.readFileSync(__dirname + "/portfolio.template", "utf-8")
  Handlebars.compile(template)
    css: css,
    portfolio: portfolio

module.exports =
  renderProfile: renderProfile
  renderPortfolio: renderPortfolio

