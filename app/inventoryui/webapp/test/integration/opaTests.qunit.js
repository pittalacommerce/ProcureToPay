sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/inventoryui/test/integration/FirstJourney',
		'ns/inventoryui/test/integration/pages/InventoryList',
		'ns/inventoryui/test/integration/pages/InventoryObjectPage'
    ],
    function(JourneyRunner, opaJourney, InventoryList, InventoryObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/inventoryui') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheInventoryList: InventoryList,
					onTheInventoryObjectPage: InventoryObjectPage
                }
            },
            opaJourney.run
        );
    }
);