namespace hrsassist;

entity Ticket
{
    key ID : UUID;
    ticketID : UUID
        @generated
        @readonly;
    title : String(100);
    description : String(500);
    priority : String(20);
    reportedBy : String(100);
    createdOn : DateTime;
    closedOn : DateTime;
    responder : String(100);
    status : String(100);
    solutions : Composition of many Solution on solutions.ticket = $self;
    attachments : Composition of many Attachments on attachments.ticket = $self;
}

entity Solution
{
    key ID : UUID;
    solutionID : UUID
        @generated
        @readonly;
    requestingEmployee : String(100);
    respondingHRPersonnel : String(100);
    ticket : Association to one Ticket;
    description : String(1000);
}

entity Status
{
    key ID : UUID;
    statusID : UUID;
    text : String(100);
}

entity Priority
{
    key ID : UUID;
    priorityID : UUID;
    text : String(100);
}

entity MyQueue
{
    key ID : UUID;
    myQueueID : UUID;
    title : String(100);
    createdBy : String(100);
    createdOn : DateTime;
    timeTaken : Integer;
    ticket : Association to one Ticket;
}

entity HRReports
{
    key ID : UUID;
    hRReportsID : UUID;
    title : String(100);
    createdBy : String(100);
    createdOn : DateTime;
    highPriorityCount : Integer;
    mediumPriorityCount : Integer;
    lowPriorityCount : Integer;
    statusCount : Integer;
    timeTaken : Integer;
    ticket : Association to one Ticket;
}

entity EmployeeReports
{
    key ID : UUID;
    employeeReportsID : UUID;
    title : String(100);
    createdBy : String(100);
    createdOn : DateTime;
    priorityCount : Integer;
    statusCount : Integer;
    timeTaken : Integer;
    ticket : Association to one Ticket;
}

entity KnowledgeBase
{
    key ID : UUID;
    knowledgeBaseID : UUID;
    title : String(100);
    createdBy : String(100);
    createdOn : DateTime;
    ticket : Association to one Ticket;
    description : String(100);
    respondBy : String(100);
    knowledgeBaseSolution : Composition of many KnowledgeBaseSolution on knowledgeBaseSolution.knowledgeBase = $self;
}

entity KnowledgeBaseSolution
{
    key ID : UUID;
    kbSolutionID : UUID
        @generated
        @readonly;
    requestingEmployee : String(100);
    respondingHRPersonnel : String(100);
    description : String(1000);
    knowledgeBase : Association to one KnowledgeBase;
}

entity Attachments
{
    key ID : UUID;
    fileName : String(100);
    mimeType : String(50);
    thumbnailUrl : String(255);
    url : String(255);
    uploadState : String(20);
    ticket : Association to one Ticket;
    statuses : Composition of many Statuses on statuses.attachments = $self;
}

entity Statuses
{
    key ID : UUID;
    title : String(100);
    text : String(500);
    active : Boolean;
    attachments : Association to one Attachments;
}
