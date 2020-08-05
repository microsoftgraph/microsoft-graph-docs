---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const connectorGroup = {
@odata.id:"https://graph.microsoft.com/onPremisesPublishingProfiles/applicationproxy/connectorGroups/3e6f4c35-a04b-4d03-b98a-66fff89b72e6"
};

let res = await client.api('/applications/bf21f7e9-9d25-4da2-82ab-7fdd85049f83/connectorGroup/$ref')
	.version('beta')
	.put(connectorGroup);

```