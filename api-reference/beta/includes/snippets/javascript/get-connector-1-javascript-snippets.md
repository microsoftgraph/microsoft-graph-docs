---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let connector = await client.api('/onPremisesPublishingProfiles/applicationProxy/connectors/{id}')
	.version('beta')
	.get();

```