---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let members = await client.api('/onPremisesPublishingProfiles/applicationProxy/connectorGroups/{id}/members')
	.version('beta')
	.get();

```