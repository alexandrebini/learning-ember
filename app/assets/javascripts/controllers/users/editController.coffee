App.PhotosEditController = Ember.ObjectController.extend
  headerTitle: 'Edit'
  buttonTitle: 'Update'

  save: ->
    @content.on 'didUpdate', =>
      @transitionToRoute('photos.show', @content)
    @store.commit()

  cancel: ->
    @content.rollback() if @content.isDirty
    @transitionToRoute('photos.index')

  destroy: ->
    @content.on 'didDelete', =>
      @transitionToRoute('photos.index')
    @content.deleteRecord()
    @store.commit()