---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const connector = {
  '@odata.id': 'https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectors/{id}'
};

await client.api('/onPremisesPublishingProfiles/applicationProxy/connectorGroups/{id}/members/$ref')
	.version('beta')
	.post(connector);

```