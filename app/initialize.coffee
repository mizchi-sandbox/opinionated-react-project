Layout = require './components/layout'
{FooController} = Kobito.Controllers

getControllerBySceneName = ->
  FooController

# initialize
state = new Cortex
  sceneName: ''
  sceneState: {}

React.render (Layout {}), document.body

run = (sceneName, props) ->
  state.off 'update'

  Controller = getControllerBySceneName sceneName

  ctrlr = new Controller
  state.sceneState.set ctrlr.aggreagate()

  ctrlr.onEnter props

  state.on 'update', ->
    obj = ctrlr.aggreagate()
    state.set obj.sceneState.val()

  state.sceneName.set sceneName
