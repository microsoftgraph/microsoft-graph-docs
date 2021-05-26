---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let buckets = await client.api('/planner/plans/2txjA-BMZEq-bKi6Wfj5aGQAB1OJ/buckets')
	.version('beta')
	.get();

```