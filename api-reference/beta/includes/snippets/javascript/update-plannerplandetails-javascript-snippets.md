---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const plannerPlanDetails = {
  sharedWith: {
    '6463a5ce-2119-4198-9f2a-628761df4a62': true,
    'd95e6152-f683-4d78-9ff5-67ad180fea4a': false,
  },
  categoryDescriptions: {
    category1: 'Indoors',
    category3: null,
  }
};

await client.api('/planner/plans/xqQg5FS2LkCp935s-FIFm2QAFkHM/details')
	.version('beta')
	.update(plannerPlanDetails);

```