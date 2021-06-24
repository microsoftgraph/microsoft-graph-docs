---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const plannerBucket = {
  name: 'Advertising',
  planId: 'xqQg5FS2LkCp935s-FIFm2QAFkHM',
  orderHint: ' !'
};

await client.api('/planner/buckets')
	.version('beta')
	.post(plannerBucket);

```