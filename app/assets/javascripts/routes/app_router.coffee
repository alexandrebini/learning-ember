Photoblog.Router = Ember.Router.extend
  location: 'hash'
  enableLogging: true

  root: Ember.Route.extend
    photos: Ember.Route.extend
      route: '/'

      showPhoto: (router, event) ->
        router.transitionTo('photos.show', event.context)

      showEdit: (router, event) ->
        router.transitionTo('photos.edit', event.context)

      connectOutlets: (router) ->
        router.get('applicationController').connectOutlet('photos',
          Photoblog.store.findAll(Photoblog.Photo) )

      index: Ember.Route.extend
        route: '/'
        connectOutlets: (router) ->
          router.get('applicationController').connectOutlet('photos')

      show: Ember.Route.extend
        route: '/photos/:photo_id'
        connectOutlets: (router, context) ->
          router.get('photosController').connectOutlet('photo', context)

      edit: Ember.Route.extend
        route: '/photos/:photo_id/edit'
        connectOutlets: (router, context) ->
          console.log 'edit'
          router.get('applicationController').connectOutlet('editPhoto', context)
          # photoController = router.get('photoController')
          # photoController.connectOutlet('editPhoto', photoController.get('content'))
          # router.get('editPhotoController').enterEditing()

        exit: (router) ->
          console.log 'exitt'