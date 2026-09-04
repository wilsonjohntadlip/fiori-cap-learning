sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"models/test/integration/pages/ModelsList.gen",
	"models/test/integration/pages/ModelsObjectPage.gen"
], function (JourneyRunner, ModelsListGenerated, ModelsObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('models') + '/test/flp.html#app-preview',
        pages: {
			onTheModelsListGenerated: ModelsListGenerated,
			onTheModelsObjectPageGenerated: ModelsObjectPageGenerated
        },
        async: true
    });

    return runner;
});

