using hrsassistSrv as service from '../../srv/service';
using from '../annotations';


annotate service.KnowledgeBase with @(
    UI.SelectionFields : [
        ticket_ID,
        title,
        description,
        createdOn,
        createdBy,
    ]
);

annotate service.KnowledgeBase with {
    title @Common.Label : 'Title'
};

annotate service.KnowledgeBase with {
    description @Common.Label : 'Description'
};

annotate service.KnowledgeBase with {
    createdOn @Common.Label : 'Created  On'
};


annotate service.KnowledgeBase with {
    createdBy @Common.Label : 'Created By'
};
annotate service.KnowledgeBase with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Ticket',
            Value : ticket_ID,
        },
        {
            $Type : 'UI.DataField',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Value : description,
        },
        {
            $Type : 'UI.DataField',
            Value : createdOn,
        },
        {
            $Type : 'UI.DataField',
            Value : createdBy,
        },
    ]
);
annotate service.KnowledgeBase with @(
    UI.FieldGroup #Main : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Ticket',
                Value : ticket_ID,
            },
            {
                $Type : 'UI.DataField',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Value : knowledgeBaseID,
                Label : 'Knowledge Base ID',
            },
            {
                $Type : 'UI.DataField',
                Value : createdOn,
            },
            {
                $Type : 'UI.DataField',
                Value : createdBy,
            },
        ],
    }
);
annotate service.KnowledgeBase with @(
    UI.DataPoint #title : {
        $Type : 'UI.DataPointType',
        Value : title,
        Title : 'Title',
    },
    UI.DataPoint #knowledgeBaseID : {
        $Type : 'UI.DataPointType',
        Value : knowledgeBaseID,
        Title : 'Knowledge Base ID',
    },
    UI.DataPoint #ticket_ID : {
        $Type : 'UI.DataPointType',
        Value : ticket_ID,
        Title : 'Ticket ID',
    },
    UI.DataPoint #createdOn : {
        $Type : 'UI.DataPointType',
        Value : createdOn,
        Title : 'Created On',
    },
    UI.DataPoint #createdBy : {
        $Type : 'UI.DataPointType',
        Value : createdBy,
        Title : 'Created By',
    },
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'title',
            Target : '@UI.DataPoint#title',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'knowledgeBaseID',
            Target : '@UI.DataPoint#knowledgeBaseID',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'ticket_ID',
            Target : '@UI.DataPoint#ticket_ID',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'createdOn',
            Target : '@UI.DataPoint#createdOn',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'createdBy',
            Target : '@UI.DataPoint#createdBy',
        },
    ]
);
annotate service.KnowledgeBase with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'Main',
            Label : 'General Information',
            Target : '@UI.FieldGroup#Main',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Solutions',
            ID : 'Solutions',
            Target : 'knowledgeBaseSolution/@UI.LineItem#Solutions',
        },
    ]
);
annotate service.KnowledgeBaseSolution with @(
    UI.LineItem #Solutions : [
        {
            $Type : 'UI.DataField',
            Value : kbSolutionID,
            Label : 'Solution ID',
        },{
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
