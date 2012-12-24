Photoblog = Ember.Application.create({
  ready: function(){

    Photoblog.photosView = Ember.ContainerView.create({
      currentViewBinding: 'Photoblog.stateManager.currentState.view'
    });
    Photoblog.photosView.append();
  }
});