sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'hrsassist/KnowledgeBase/test/integration/FirstJourney',
		'hrsassist/KnowledgeBase/test/integration/pages/KnowledgeBaseList',
		'hrsassist/KnowledgeBase/test/integration/pages/KnowledgeBaseObjectPage'
    ],
    function(JourneyRunner, opaJourney, KnowledgeBaseList, KnowledgeBaseObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('hrsassist/KnowledgeBase') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheKnowledgeBaseList: KnowledgeBaseList,
					onTheKnowledgeBaseObjectPage: KnowledgeBaseObjectPage
                }
            },
            opaJourney.run
        );
    }
);