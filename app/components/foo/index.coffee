React = require 'react'
template = require('./templates')

module.exports = React.create
  render: ->
    template(@props)
