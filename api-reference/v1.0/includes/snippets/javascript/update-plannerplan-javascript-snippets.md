---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const plannerPlan = {
  title: 'title-value'
};

await client.api('/planner/plans/{plan-id}')
	.update(plannerPlan);

```