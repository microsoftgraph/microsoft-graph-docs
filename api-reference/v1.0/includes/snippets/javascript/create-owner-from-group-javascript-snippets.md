---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const directoryObject = {
  '@odata.id': 'https://graph.microsoft.com/v1.0/users/{id}'
};

await client.api('/groups/{id}/owners/$ref')
	.post(directoryObject);

```