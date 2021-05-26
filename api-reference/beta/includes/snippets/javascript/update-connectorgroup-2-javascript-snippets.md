---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const connectorGroup = {
  name: 'name-value',
  region: 'region-value'
};

await client.api('/onPremisesPublishingProfiles/applicationProxy/connectorGroups/{id}')
	.version('beta')
	.update(connectorGroup);

```