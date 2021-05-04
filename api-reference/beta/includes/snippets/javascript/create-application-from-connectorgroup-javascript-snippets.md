---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const connectorGroup = {
  '@odata.id': 'https://graph.microsoft.com/onPremisesPublishingProfiles/applicationproxy/connectorGroups/{id}'
};

await client.api('/applications/{id}/connectorGroup/$ref')
	.version('beta')
	.put(connectorGroup);

```