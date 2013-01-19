App.ApplicationController = Ember.Controller.extend
  isHome: (->
    @get('currentRoute') == 'home'
  ).property('currentRoute')

  isPhotos: (->
    @get('currentRoute') == 'photos'
  ).property('currentRoute')