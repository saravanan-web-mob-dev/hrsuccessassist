using hrsassistSrv as service from '../../srv/service';
using from '../annotations';


annotate service.EmployeeReports with @(
    UI.SelectionFields : [
        ticket_ID,
        createdOn,
        createdBy,
        title,
        timeTaken,
    ]
);

annotate service.EmployeeReports with {
    createdOn @Common.Label : 'Created On'
};

annotate service.EmployeeReports with {
    createdBy @Common.Label : 'Created By'
};

annotate service.EmployeeReports with {
    title @Common.Label : 'Title'
};


annotate service.EmployeeReports with {
    timeTaken @Common.Label : 'Time Taken'
};
annotate service.EmployeeReports with @(
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
            Value : createdOn,
        },
        {
            $Type : 'UI.DataField',
            Value : createdBy,
        },
        {
            $Type : 'UI.DataField',
            Value : timeTaken,
        },
    ]
);
