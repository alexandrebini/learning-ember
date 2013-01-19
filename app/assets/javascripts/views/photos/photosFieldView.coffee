App.PhotosFormView = Ember.View.extend

  FieldView: Ember.View.extend
    classNameBindings: ['className', 'withError:error']
    className: 'control-group'

    withError: (->
      errors = @get('parentView.content.errors')
      if errors?
        errors[@get('item')]?
      else
        false
    ).property('parentView.content.errors')