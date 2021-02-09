---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/identityGovernance/accessReviews/definitions/29f2d16e-9ca6-4052-bbfe-802c48981fd8')
	.version('beta')
	.delete();

```