changeCase = require 'change-case'

module.exports = (g, {$1}) ->
  g.gen "index.coffee.hbs", "app/components/#{$1}/index.coffee"
  g.gen "style.scss.hbs", "app/components/#{$1}/style.scss"
  g.gen "template.jade.hbs", "app/components/#{$1}/template.jade"
