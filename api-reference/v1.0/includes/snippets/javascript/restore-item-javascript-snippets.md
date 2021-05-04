---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const driveItem = {
  parentReference: {
    id: 'String',
  },
  name: 'String'
};

await client.api('/me/drive/items/{item-id}/restore')
	.version('beta')
	.post(driveItem);

```