using { hrsassistSrv } from '../srv/service.cds';

annotate hrsassistSrv.Ticket with @UI.HeaderInfo: { TypeName: 'Ticket', TypeNamePlural: 'Tickets', Title: { Value: ticketID } };
annotate hrsassistSrv.Ticket with {
  ID @UI.Hidden @Common.Text: { $value: ticketID, ![@UI.TextArrangement]: #TextOnly }
};
annotate hrsassistSrv.Ticket with @UI.Identification: [{ Value: ticketID }];
annotate hrsassistSrv.Ticket with {
  solutions @Common.Label: 'Solutions'
};

annotate hrsassistSrv.Ticket with @UI.Facets: [
  { $Type : 'UI.ReferenceFacet', ID : 'Solution', Target : 'solutions/@UI.LineItem' }
];

annotate hrsassistSrv.Ticket with @UI.SelectionFields: [
  ticketID
];

annotate hrsassistSrv.Solution with @UI.HeaderInfo: { TypeName: 'Solution', TypeNamePlural: 'Solutions', Title: { Value: solutionID } };
annotate hrsassistSrv.Solution with {
  ID @UI.Hidden @Common.Text: { $value: solutionID, ![@UI.TextArrangement]: #TextOnly }
};
annotate hrsassistSrv.Solution with @UI.Identification: [{ Value: solutionID }];
annotate hrsassistSrv.Solution with {
  ticket @Common.ValueList: {
    CollectionPath: 'Ticket',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: ticket_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'ticketID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'title'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'description'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'priority'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'reportedBy'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdOn'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'closedOn'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'responder'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'status'
      },
    ],
  }
};
annotate hrsassistSrv.Solution with {
  ticket @Common.Text: { $value: ticket.ticketID, ![@UI.TextArrangement]: #TextOnly }
};

annotate hrsassistSrv.Solution with {
  ticket @Common.Label: 'Ticket'
};

annotate hrsassistSrv.Solution with @UI.SelectionFields: [
  ticket_ID
];

annotate hrsassistSrv.Status with @UI.HeaderInfo: { TypeName: 'Status', TypeNamePlural: 'Statuses', Title: { Value: statusID } };
annotate hrsassistSrv.Status with {
  ID @UI.Hidden @Common.Text: { $value: statusID, ![@UI.TextArrangement]: #TextOnly }
};
annotate hrsassistSrv.Status with @UI.Identification: [{ Value: statusID }];
annotate hrsassistSrv.Status with @UI.SelectionFields: [
  statusID
];

annotate hrsassistSrv.Priority with @UI.HeaderInfo: { TypeName: 'Priority', TypeNamePlural: 'Priorities', Title: { Value: priorityID } };
annotate hrsassistSrv.Priority with {
  ID @UI.Hidden @Common.Text: { $value: priorityID, ![@UI.TextArrangement]: #TextOnly }
};
annotate hrsassistSrv.Priority with @UI.Identification: [{ Value: priorityID }];
annotate hrsassistSrv.Priority with @UI.SelectionFields: [
  priorityID
];

annotate hrsassistSrv.MyQueue with @UI.HeaderInfo: { TypeName: 'MyQueue', TypeNamePlural: 'MyQueues', Title: { Value: myQueueID } };
annotate hrsassistSrv.MyQueue with {
  ID @UI.Hidden @Common.Text: { $value: myQueueID, ![@UI.TextArrangement]: #TextOnly }
};
annotate hrsassistSrv.MyQueue with @UI.Identification: [{ Value: myQueueID }];
annotate hrsassistSrv.MyQueue with {
  ticket @Common.ValueList: {
    CollectionPath: 'Ticket',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: ticket_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'ticketID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'title'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'description'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'priority'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'reportedBy'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdOn'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'closedOn'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'responder'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'status'
      },
    ],
  }
};
annotate hrsassistSrv.MyQueue with @UI.LineItem: [
    { $Type: 'UI.DataField', Label: 'Ticket', Value: ticket_ID }
];

annotate hrsassistSrv.MyQueue with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Label: 'Ticket', Value: ticket_ID }
  ]
};

annotate hrsassistSrv.MyQueue with {
  ticket @Common.Text: { $value: ticket.ticketID, ![@UI.TextArrangement]: #TextOnly }
};

annotate hrsassistSrv.MyQueue with {
  ticket @Common.Label: 'Ticket'
};

annotate hrsassistSrv.MyQueue with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate hrsassistSrv.MyQueue with @UI.SelectionFields: [
  ticket_ID
];

annotate hrsassistSrv.HRReports with @UI.HeaderInfo: { TypeName: 'HRReports', TypeNamePlural: 'HRReports', Title: { Value: hRReportsID } };
annotate hrsassistSrv.HRReports with {
  ID @UI.Hidden @Common.Text: { $value: hRReportsID, ![@UI.TextArrangement]: #TextOnly }
};
annotate hrsassistSrv.HRReports with @UI.Identification: [{ Value: hRReportsID }];
annotate hrsassistSrv.HRReports with {
  ticket @Common.ValueList: {
    CollectionPath: 'Ticket',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: ticket_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'ticketID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'title'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'description'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'priority'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'reportedBy'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdOn'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'closedOn'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'responder'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'status'
      },
    ],
  }
};
annotate hrsassistSrv.HRReports with @UI.LineItem: [
    { $Type: 'UI.DataField', Label: 'Ticket', Value: ticket_ID }
];

annotate hrsassistSrv.HRReports with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Label: 'Ticket', Value: ticket_ID }
  ]
};

annotate hrsassistSrv.HRReports with {
  ticket @Common.Text: { $value: ticket.ticketID, ![@UI.TextArrangement]: #TextOnly }
};

annotate hrsassistSrv.HRReports with {
  ticket @Common.Label: 'Ticket'
};

annotate hrsassistSrv.HRReports with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate hrsassistSrv.HRReports with @UI.SelectionFields: [
  ticket_ID
];

annotate hrsassistSrv.EmployeeReports with @UI.HeaderInfo: { TypeName: 'EmployeeReports', TypeNamePlural: 'EmployeeReports', Title: { Value: employeeReportsID } };
annotate hrsassistSrv.EmployeeReports with {
  ID @UI.Hidden @Common.Text: { $value: employeeReportsID, ![@UI.TextArrangement]: #TextOnly }
};
annotate hrsassistSrv.EmployeeReports with @UI.Identification: [{ Value: employeeReportsID }];
annotate hrsassistSrv.EmployeeReports with {
  ticket @Common.ValueList: {
    CollectionPath: 'Ticket',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: ticket_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'ticketID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'title'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'description'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'priority'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'reportedBy'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdOn'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'closedOn'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'responder'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'status'
      },
    ],
  }
};
annotate hrsassistSrv.EmployeeReports with @UI.LineItem: [
    { $Type: 'UI.DataField', Label: 'Ticket', Value: ticket_ID }
];

annotate hrsassistSrv.EmployeeReports with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Label: 'Ticket', Value: ticket_ID }
  ]
};

annotate hrsassistSrv.EmployeeReports with {
  ticket @Common.Text: { $value: ticket.ticketID, ![@UI.TextArrangement]: #TextOnly }
};

annotate hrsassistSrv.EmployeeReports with {
  ticket @Common.Label: 'Ticket'
};

annotate hrsassistSrv.EmployeeReports with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate hrsassistSrv.EmployeeReports with @UI.SelectionFields: [
  ticket_ID
];

annotate hrsassistSrv.KnowledgeBase with @UI.HeaderInfo: { TypeName: 'KnowledgeBase', TypeNamePlural: 'KnowledgeBases', Title: { Value: knowledgeBaseID } };
annotate hrsassistSrv.KnowledgeBase with {
  ID @UI.Hidden @Common.Text: { $value: knowledgeBaseID, ![@UI.TextArrangement]: #TextOnly }
};
annotate hrsassistSrv.KnowledgeBase with @UI.Identification: [{ Value: knowledgeBaseID }];
annotate hrsassistSrv.KnowledgeBase with {
  ticket @Common.ValueList: {
    CollectionPath: 'Ticket',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: ticket_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'ticketID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'title'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'description'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'priority'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'reportedBy'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdOn'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'closedOn'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'responder'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'status'
      },
    ],
  }
};
annotate hrsassistSrv.KnowledgeBase with @UI.LineItem: [
    { $Type: 'UI.DataField', Label: 'Ticket', Value: ticket_ID }
];

annotate hrsassistSrv.KnowledgeBase with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Label: 'Ticket', Value: ticket_ID }
  ]
};

annotate hrsassistSrv.KnowledgeBase with {
  ticket @Common.Text: { $value: ticket.ticketID, ![@UI.TextArrangement]: #TextOnly }
};

annotate hrsassistSrv.KnowledgeBase with {
  ticket @Common.Label: 'Ticket'
};

annotate hrsassistSrv.KnowledgeBase with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate hrsassistSrv.KnowledgeBase with @UI.SelectionFields: [
  ticket_ID
];

