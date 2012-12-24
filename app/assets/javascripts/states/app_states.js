Photoblog.StateManager = Ember.StateManager.extend({
  enableLogging: true,
  initialState: 'start',
  states: {
    start: Ember.State.extend({
      ready: function(manager) {
        console.log('state');
        var store = DS.Store.create({
          adapter: DS.RESTAdapter.create(),
          revision: 4
        });
        manager.set('store', store);
        var photos = store.find(Photoblog.Photo);
        manager.photosController.set('content', photos);
        store.adapter.mappings = {
          comments: Photoblog.Comment
        };
        manager.goToState('photos');
      }
    }),
    photos: Ember.State.create({
      initialState: 'index',
      index: Ember.State.create({
        view: function() {
          console.log('view');
          return Photoblog.IndexView.create()
        }.property()
      })
    }) // End Photos state
  } // End States
});