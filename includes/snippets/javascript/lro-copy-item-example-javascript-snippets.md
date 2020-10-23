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
    path: "/drive/root:/Documents"
  },
  name: "Copy of LargeFolder1"
};

let res = await client.api('/me/drive/items/{folder-item-id}/copy')
	.version('beta')
	.post(driveItem);

```