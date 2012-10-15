Jax.Controller.create "Dungeon", ApplicationController,
  index: ->
    dungeon = Dungeon.find "first"
    @world.addObject dungeon
    @player.camera.setPosition  dungeon.starting.position
    @player.camera.setDirection dungeon.starting.direction
    dungeon.addTorches @world
    @player.lantern = LightSource.find "lantern"
    @world.addLightSource @player.lantern

  helpers: -> [ UserInputHelper ]
