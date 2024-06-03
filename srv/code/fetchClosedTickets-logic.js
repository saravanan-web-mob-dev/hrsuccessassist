/**
 * 
 * @Before(event = { "CREATE","UPDATE" }, entity = "hrsassistSrv.KnowledgeBase")
 * @param {Object} request - User information, tenant-specific CDS model, headers and query parameters
*/
module.exports = async function(request) {
    /* const { data } = request;

    if (!data.ticket_ID) {
        return request.error(400, 'Ticket ID must be provided');
    }

    const ticket = await SELECT.one('hrsassist.Ticket').where({ ID: data.ticket_ID });

    if (!ticket) {
        return request.error(404, `Ticket with ID ${data.ticket_ID} not found`);
    }

    if (ticket.status !== 'closed') {
        return request.error(400, 'Ticket status must be closed');
    }

    // Create or update in the KnowledgeBase entity
    if (request.event === 'CREATE') {
        await INSERT.into('hrsassist.KnowledgeBase')
            .columns('ticket_ID', 'title', 'description', 'respondedBy', 'createdOn', 'createdBy')
            .values(ticket.ID, ticket.title, ticket.description, ticket.responder, ticket.createdOn, ticket.reportedBy);
    } else if (request.event === 'UPDATE') {
        await UPDATE('hrsassist.KnowledgeBase')
            .set({
                ticket_ID: ticket.ID,
                title: ticket.title,
                description: ticket.description,
                respondedBy: ticket.responder,
                createdOn: ticket.createdOn,
                createdBy: ticket.reportedBy
            })
            .where({ ID: data.ID });
    } */
}