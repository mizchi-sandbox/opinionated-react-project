module.exports = (g, {$1}) ->
  g.gen "aggregate.coffee.hbs", "app/controllers/#{$1}/aggregate.json"
