App.PhotosNewController = Ember.ObjectController.extend
  headerTitle: 'Create'
  buttonTitle: 'Create'

  save: ->
    @content.on 'didCreate', =>
      @transitionToRoute 'photos.show', @content
    @store.commit()

  cancel: ->
    @content.deleteRecord()
    @transitionToRoute('photos.index')