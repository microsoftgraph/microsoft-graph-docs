---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const directoryObject = {
  '@odata.id':'https://graph.microsoft.com/beta/groups/{id}'
};

await client.api('/administrativeUnits/{id}/members/$ref')
	.version('beta')
	.post(directoryObject);

```