---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let activityStatistics = await client.api('/me/analytics/activitystatistics')
	.version('beta')
	.get();

```