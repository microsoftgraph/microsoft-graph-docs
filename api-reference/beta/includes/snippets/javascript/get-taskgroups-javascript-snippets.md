---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let taskGroups = await client.api('/me/outlook/taskGroups')
	.version('beta')
	.get();

```