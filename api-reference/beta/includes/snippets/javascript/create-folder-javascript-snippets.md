---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const driveItem = {
  name: 'New Folder',
  folder: { },
  '@microsoft.graph.conflictBehavior': 'rename'
};

await client.api('/me/drive/root/children')
	.version('beta')
	.post(driveItem);

```