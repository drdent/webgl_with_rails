Jax.getGlobal()['Teapot'] = Jax.Model.create
  after_initialize: ->
    @mesh = new Jax.Mesh.Teapot
    size: this.size
    material: "teapot"
      
