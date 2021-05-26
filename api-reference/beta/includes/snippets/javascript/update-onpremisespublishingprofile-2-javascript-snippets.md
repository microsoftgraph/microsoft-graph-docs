---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const hybridAgentUpdaterConfiguration = {
    deferUpdate: '2018-08-20T12:00'
};

await client.api('/onPremisesPublishingProfiles/provisioning/hybridAgentUpdaterConfiguration')
	.version('beta')
	.update(hybridAgentUpdaterConfiguration);

```