---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const group = {
  '@odata.id': 'https://graph.microsoft.com/v1.0/groups/{groupId}'
};

await client.api('/print/shares/{printerShareId}/allowedGroups/$ref')
	.post(group);

```