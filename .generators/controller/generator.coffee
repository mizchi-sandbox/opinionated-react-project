cc = require 'change-case'

module.exports = (g, {$1, $2}) ->
  classify = (name) -> cc.pascalCase name
  methodify = (name) -> cc.snakeCase name

  g.addTemplateHelper
    'classify': classify
    'methodify': methodify

  g.gen "viewmodel.ts.hbs", "app/domains/entities/viewmodels/#{$2}.ts"
  g.gen "controller.ts.hbs", "app/domains/controllers/#{$2}-controller.ts"
  g.gen "actions.ts.hbs", "app/domains/actions/#{$2}-actions.ts"

  console.log """
  Add this code to your root
  ================================
  <reference path='entities/viewmodels/#{$2}.ts' />
  <reference path='controllers/#{$2}-controllor.ts' />
  <reference path='actions/#{$2}-actions.ts' />
  """
