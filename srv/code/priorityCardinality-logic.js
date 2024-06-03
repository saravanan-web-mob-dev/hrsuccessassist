/**
 * 
 * @On(event = { "READ","UPDATE" }, entity = "hrsassistSrv.Ticket")
 * @param {Object} request - User information, tenant-specific CDS model, headers and query parameters
*/
module.exports = async function(request) {
    const { data } = request;

    if (Array.isArray(data)) { // Check if data is an array
        for (let ticket of data) {
            switch (ticket.priority) {
                case 'high':
                    ticket.priorityLevel = 'error';
                    break;
                case 'medium':
                    ticket.priorityLevel = 'critical';
                    break;
                case 'low':
                    ticket.priorityLevel = 'information';
                    break;
                default:
                    ticket.priorityLevel = 'none';
            }
        }
    } else { // If data is an object
        switch (data.priority) {
            case 'high':
                data.priorityLevel = 'error';
                break;
            case 'medium':
                data.priorityLevel = 'critical';
                break;
            case 'low':
                data.priorityLevel = 'information';
                break;
            default:
                data.priorityLevel = 'none';
        }
    }
}