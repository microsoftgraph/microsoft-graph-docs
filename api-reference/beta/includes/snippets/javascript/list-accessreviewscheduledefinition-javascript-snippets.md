---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/identityGovernance/accessReviews/definitions')
	.version('beta')
	.skip(0)
	.top(100)
	.get();

```