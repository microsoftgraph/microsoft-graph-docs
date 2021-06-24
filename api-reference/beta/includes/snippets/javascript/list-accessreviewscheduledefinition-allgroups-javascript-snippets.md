---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let definitions = await client.api('/identityGovernance/accessReviews/definitions')
	.version('beta')
	.filter('contains(scope/microsoft.graph.accessReviewQueryScope/query, \'./members\')')
	.get();

```