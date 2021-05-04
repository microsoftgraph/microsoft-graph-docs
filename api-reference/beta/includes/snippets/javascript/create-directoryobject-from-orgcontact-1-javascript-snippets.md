---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const directoryObject = {
  directoryObject: {
  }
};

await client.api('/contacts/{id}/directReports')
	.version('beta')
	.post(directoryObject);

```