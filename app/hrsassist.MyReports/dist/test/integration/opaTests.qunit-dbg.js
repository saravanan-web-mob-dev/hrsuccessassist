sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'hrsassist/MyReports/test/integration/FirstJourney',
		'hrsassist/MyReports/test/integration/pages/EmployeeReportsList',
		'hrsassist/MyReports/test/integration/pages/EmployeeReportsObjectPage'
    ],
    function(JourneyRunner, opaJourney, EmployeeReportsList, EmployeeReportsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('hrsassist/MyReports') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEmployeeReportsList: EmployeeReportsList,
					onTheEmployeeReportsObjectPage: EmployeeReportsObjectPage
                }
            },
            opaJourney.run
        );
    }
);