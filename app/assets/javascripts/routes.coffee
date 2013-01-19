App.Router.reopen
  location: 'history'
  rootURL: '/'

App.Router.map ->
  @resource 'photos', ->
    @route 'new'
    @route 'show'
      path: '/:photo_id'
    @route 'edit'
      path: '/:photo_id/edit'

App.IndexRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'home')

# photos
App.PhotosRoute = Ember.Route.extend
  setupController: ->
    @controllerFor('application').set('currentRoute', 'photos')

App.PhotosIndexRoute = App.PhotosRoute.extend
  model: ->
    App.Photo.find()
  setupController: (controller, model) ->
    @_super()
    controller.set('photos', model)

App.PhotosNewRoute = App.PhotosRoute.extend
  model: ->
    App.Photo.createRecord()
  setupController: (controller, model) ->
    @_super()
    controller.set('content', model)

App.PhotoRoute = App.PhotosRoute.extend
  model: (params) ->
    App.Photo.find(params.photo_id)
  setupController: (controller, model) ->
    @_super()
    controller.set('content', model)

App.PhotosShowRoute = App.PhotoRoute.extend()
App.PhotosEditRoute = App.PhotoRoute.extend()