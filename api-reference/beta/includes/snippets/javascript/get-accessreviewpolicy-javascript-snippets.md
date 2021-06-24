---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let accessReviewPolicy = await client.api('/policies/accessReviewPolicy')
	.version('beta')
	.get();

```