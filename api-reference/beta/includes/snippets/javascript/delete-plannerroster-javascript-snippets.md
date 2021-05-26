---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/planner/rosters/5ba84f7a-aa11-4a51-a298-9f2c7ec6bb38')
	.version('beta')
	.delete();

```