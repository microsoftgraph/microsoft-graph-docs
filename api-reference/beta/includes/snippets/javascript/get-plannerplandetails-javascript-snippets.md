---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let plannerPlanDetails = await client.api('/planner/plans/xqQg5FS2LkCp935s-FIFm2QAFkHM/details')
	.version('beta')
	.get();

```