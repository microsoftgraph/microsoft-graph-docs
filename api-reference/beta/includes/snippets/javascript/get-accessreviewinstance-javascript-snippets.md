---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let accessReviewInstance = await client.api('/identityGovernance/accessReviews/definitions/6af553ce-104d-4842-ab5f-67d7b556e9dd/instances/9ea56d3c-8746-4cdf-9ccc-c7fe1a267c24')
	.version('beta')
	.get();

```