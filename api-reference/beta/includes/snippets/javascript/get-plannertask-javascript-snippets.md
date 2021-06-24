---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let plannerTask = await client.api('/planner/tasks/01gzSlKkIUSUl6DF_EilrmQAKDhh')
	.version('beta')
	.get();

```