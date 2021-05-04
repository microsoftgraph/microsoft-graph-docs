---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const plannerPlan = {
  container: {
    url: 'https://graph.microsoft.com/beta/groups/ebf3b108-5234-4e22-b93d-656d7dae5874'
  },
  title: 'title-value'
};

await client.api('/planner/plans')
	.version('beta')
	.post(plannerPlan);

```