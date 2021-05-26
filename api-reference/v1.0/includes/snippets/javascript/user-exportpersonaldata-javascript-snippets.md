---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const exportPersonalData = {
  storageLocation: 'storageLocation-value'
};

await client.api('/users/{id}/exportPersonalData')
	.post(exportPersonalData);

```