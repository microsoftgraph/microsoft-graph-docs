---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let taskFolders = await client.api('/me/outlook/taskFolders')
	.version('beta')
	.get();

```