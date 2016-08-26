# app/assets/javascripts/components/record.js.coffee

@Lead = React.createClass
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.lead.contact
      React.DOM.td null, @props.lead.source
      React.DOM.td null, @props.lead.description
      React.DOM.td null, @props.lead.active
      React.DOM.td null, @props.lead.salesperson_id
