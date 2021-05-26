---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let connectorGroup = await client.api('/onPremisesPublishingProfiles/applicationProxy/connectorGroups/{id}')
	.version('beta')
	.get();

```