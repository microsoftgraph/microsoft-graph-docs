---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let recentPlans = await client.api('/me/planner/recentPlans')
	.version('beta')
	.get();

```