---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const plannerRoster = {
  '@odata.type': '#microsoft.graph.plannerRoster'
};

await client.api('/planner/rosters')
	.version('beta')
	.post(plannerRoster);

```