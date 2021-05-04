---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let plannerPlanDetails = await client.api('/planner/plans/{plan-id}/details')
	.get();

```