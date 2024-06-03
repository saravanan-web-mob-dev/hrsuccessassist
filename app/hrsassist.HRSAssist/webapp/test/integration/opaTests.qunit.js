sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'hrsassist/HRSAssist/test/integration/FirstJourney',
		'hrsassist/HRSAssist/test/integration/pages/TicketList',
		'hrsassist/HRSAssist/test/integration/pages/TicketObjectPage'
    ],
    function(JourneyRunner, opaJourney, TicketList, TicketObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('hrsassist/HRSAssist') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheTicketList: TicketList,
					onTheTicketObjectPage: TicketObjectPage
                }
            },
            opaJourney.run
        );
    }
);