---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const settings = {
    redundancyDetection: {
        isEnabled: false,
        similarityThreshold: 70,
        minWords: 12,
        maxWords: 400000
    },
    topicModeling: {
        isEnabled: false,
        ignoreNumbers: false,
        topicCount: 50,
        dynamicallyAdjustTopicCount: false
    },
    ocr: {
        isEnabled: true,
        maxImageSize: 12000
    }
};

await client.api('/compliance/ediscovery/cases/{caseId}/settings')
	.version('beta')
	.update(settings);

```