---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let plannerUser = await client.api('/me/planner')
	.version('beta')
	.get();

```