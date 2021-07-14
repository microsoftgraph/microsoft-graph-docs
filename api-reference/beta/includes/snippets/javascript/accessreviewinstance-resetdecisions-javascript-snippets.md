---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/identityGovernance/accessReviews/definitions/0185aab8-9a7e-44b5-ae36-41b923c3bf87/instances/1234aab8-9a7e-44b5-ae36-41b923c3bf87/resetDecisions')
	.version('beta')
	.post();

```