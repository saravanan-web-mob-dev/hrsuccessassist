using hrsassistSrv as service from '../../srv/service';
using from '../annotations';
annotate service.Ticket with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : ticketID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Title',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Description',
            Value : description,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Priority',
            Value : priority,
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Reported By',
            Value : reportedBy,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Created On',
            Value : createdOn,
        },
        {
            $Type : 'UI.DataField',
            Value : status,
        },
    ]
);

annotate service.Ticket with {
    ticketID @Common.Label : 'Ticket ID'
};
annotate service.Ticket with @(
    UI.SelectionFields : [
        ticketID,
        title,
        priority,
        status,
        reportedBy,
        responder,
        createdOn,
    ]
);
annotate service.Ticket with {
    title @Common.Label : 'Title'
};
annotate service.Ticket with {
    priority @Common.Label : 'Priority'
};
annotate service.Ticket with {
    status @Common.Label : 'Status'
};
annotate service.Ticket with {
    reportedBy @Common.Label : 'Reported By'
};
annotate service.Ticket with {
    responder @Common.Label : 'Responder'
};
annotate service.Ticket with {
    createdOn @Common.Label : 'Created On'
};
annotate service.Ticket with {
    priority @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Priority',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : priority,
                    ValueListProperty : 'text',
                },
            ],
            Label : 'Priority',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Ticket with {
    status @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Status',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : status,
                    ValueListProperty : 'text',
                },
            ],
            Label : 'Status',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Ticket with @(
    UI.DataPoint #title : {
        $Type : 'UI.DataPointType',
        Value : title,
        Title : 'Title',
    },
    UI.DataPoint #ticketID : {
        $Type : 'UI.DataPointType',
        Value : ticketID,
        Title : 'Ticket ID',
    },
    UI.DataPoint #createdOn : {
        $Type : 'UI.DataPointType',
        Value : createdOn,
        Title : 'Created On',
    },
    UI.DataPoint #status : {
        $Type : 'UI.DataPointType',
        Value : status,
        Title : 'Status',
    },
    UI.DataPoint #priority : {
        $Type : 'UI.DataPointType',
        Value : priority,
        Title : 'Priority',
    },
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'title',
            Target : '@UI.DataPoint#title',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'ticketID',
            Target : '@UI.DataPoint#ticketID',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'createdOn',
            Target : '@UI.DataPoint#createdOn',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'priority',
            Target : '@UI.DataPoint#priority',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'status',
            Target : '@UI.DataPoint#status',
        },
    ]
);
annotate service.Ticket with @(
    UI.Facets : [
        
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'General',
            ID : 'General',
            Target : '@UI.FieldGroup#General',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Solutions',
            ID : 'Solutions',
            Target : 'solutions/@UI.LineItem#Solutions',
        },
    ],
    UI.FieldGroup #General : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : title,
            },{
                $Type : 'UI.DataField',
                Value : description,
                Label : 'Description',
            },{
                $Type : 'UI.DataField',
                Value : priority,
            },{
                $Type : 'UI.DataField',
                Value : status,
            },{
                $Type : 'UI.DataField',
                Value : createdOn,
            },{
                $Type : 'UI.DataField',
                Value : reportedBy,
            },{
                $Type : 'UI.DataField',
                Value : responder,
            },{
                $Type : 'UI.DataField',
                Value : closedOn,
                Label : 'Closed On',
            },],
    }
);

annotate service.Solution with @(
    UI.LineItem #Solutions : [
        {
            $Type : 'UI.DataField',
            Value : description,
            Label : 'Description',
        },{
            $Type : 'UI.DataField',
            Value : requestingEmployee,
            Label : 'Employee',
        },{
            $Type : 'UI.DataField',
            Value : respondingHRPersonnel,
            Label : 'Responder',
        },]
);
