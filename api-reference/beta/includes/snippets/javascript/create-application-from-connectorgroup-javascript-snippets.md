---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const application = {
  @odata.id: "https://graph.microsoft.com/beta/applications/{id}"
};

let res = await client.api('/onPremisesPublishingProfiles/applicationProxy/connectorGroups/{id}/applications')
	.version('beta')
	.post(application);

```