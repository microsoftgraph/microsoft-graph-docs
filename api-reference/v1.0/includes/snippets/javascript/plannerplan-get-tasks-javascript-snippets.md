---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let tasks = await client.api('/planner/plans/{plan-id}/tasks')
	.get();

```