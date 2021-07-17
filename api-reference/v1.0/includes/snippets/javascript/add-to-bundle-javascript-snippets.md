---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const driveItem = {
  id: '123456!87'
};

await client.api('/drive/bundles/{bundle-id}/children')
	.version('beta')
	.post(driveItem);

```