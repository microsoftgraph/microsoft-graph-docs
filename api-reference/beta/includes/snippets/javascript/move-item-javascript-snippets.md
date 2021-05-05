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
    id: 'new-parent-folder-id'
  },
  name: 'new-item-name.txt'
};

await client.api('/me/drive/items/{item-id}')
	.version('beta')
	.update(driveItem);

```