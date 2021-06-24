---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let plannerTaskDetails = await client.api('/planner/tasks/{task-id}/details')
	.get();

```