---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const directoryObject = {
  '@odata.id':'https://graph.microsoft.com/v1.0/users/alexd@contoso.com'
};

await client.api('/groups/{id}/rejectedSenders/$ref')
	.post(directoryObject);

```