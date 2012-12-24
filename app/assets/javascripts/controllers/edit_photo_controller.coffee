Photoblog.EditPhotoController = Ember.Controller.extend({})
# enterEditing: ->
#   this.transaction = this.get('store').transaction()
#   if this.get('content.id')
#     this.transaction.add(this.get('content'))
#   else
#     this.set('content', this.transaction.createRecord(App.Contact, {}))