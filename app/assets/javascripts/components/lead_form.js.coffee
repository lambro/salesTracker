@LeadForm = React.createClass
  getInitialState: ->
    contact: ''
    date: ''
    description: ''
    active: ''
    salesperson_id: ''

  handleSubmit: (e) ->
    e.preventDefault()
    $.post '', { lead: @state }, (data) =>
      @props.handleNewLead data
      @setState @getInitialState(),
      'JSON'

  render: ->
    React.DOM.form
      className: 'form-inline'
      React.DOM.div
        className: 'form-group'
        React.DOM.input
          type: 'text'
          className: 'form-control'
          placeholder: 'Source'
          name: 'source'
          value: @state.source
          onChange: @handleChange
      React.DOM.button
        type: 'submit'
        className: 'btn btn-primary'
        disabled: !@valid()
        'Create lead'

  handleChange: (e) ->
    name = e.target.name
    @setState "#{name}": e.target.value

  valid: ->
    @state.contact && @state.date && @state.description && @state.active && @state.salesperson_id
