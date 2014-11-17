cc = require 'change-case'

module.exports = (g, {$1}) ->
  classify = (name) -> cc.pascalCase name
  methodify = (name) -> cc.snakeCase name

  g.addTemplateHelper
    '#classify': classify
    '#methodify': methodify

  g.gen "viewmodel.ts.hbs", "app/domains/entities/viewmodels/#{$1}.ts"
  g.gen "controller.ts.hbs", "app/domains/controllers/#{$1}-controlloer.ts"
  g.gen "actions.ts.hbs", "app/domains/actions/#{$1}-actions.ts"
