App.Photo = DS.Model.extend
  title: DS.attr('string', defaultValue: '', validations: { presence: true })
  url: DS.attr('string', defaultValue: '')
  fullErrorMessages: ( ->
    messages = []

    if @get('errors')?
      for attr, error of @get('errors')
        messages.push "#{ attr } #{ error }"

    return messages

  ).property('errors')