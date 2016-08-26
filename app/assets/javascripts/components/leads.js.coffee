@Leads = React.createClass
  getInitialState: ->
    leads: @props.data
  getDefaultProps: ->
    leads: []
  render: ->
    React.DOM.div
      className: 'leads'
      React.DOM.h2
        className: 'title'
        'Leads'
      React.DOM.table
        className: 'table table-bordered'
        React.DOM.thead null,
          React.DOM.tr null,
            React.DOM.th null, 'Contact'
            React.DOM.th null, 'Source'
            React.DOM.th null, 'Description'
            React.DOM.th null, 'Active'
            React.DOM.th null, 'Salesperson'
        React.DOM.tbody null,
          for lead in @state.leads
            React.createElement Lead, key: lead.id, lead: lead