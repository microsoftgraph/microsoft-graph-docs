---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const connectorGroup = Content-type: application/json
Content-length: 30

{
  @odata.id: "https://graph.microsoft.com/onPremisesPublishingProfiles/applicationproxy/connectorGroups/{id}"
};

let res = await client.api('/applications/{id}/connectorGroup/$ref')
	.version('beta')
	.put(connectorGroup);

```