---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const connectorGroup = {
  '@odata.id': 'https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectorGroups/{id}'
};

await client.api('/onPremisesPublishingProfiles/applicationProxy/connectors/{id}/memberOf/$ref')
	.version('beta')
	.post(connectorGroup);

```