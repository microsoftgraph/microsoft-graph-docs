---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const plannerBucket = {
  name: 'Development'
};

await client.api('/planner/buckets/hsOf2dhOJkqyYYZEtdzDe2QAIUCR')
	.version('beta')
	.update(plannerBucket);

```