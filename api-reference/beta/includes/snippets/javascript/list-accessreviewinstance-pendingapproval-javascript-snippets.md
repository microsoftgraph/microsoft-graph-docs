---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/me/pendingAccessReviewInstances')
	.version('beta')
	.expand('definition')
	.skip(0)
	.top(100)
	.get();

```