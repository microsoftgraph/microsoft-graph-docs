---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let accessReviewInstanceDecisionItem = await client.api('/identityGovernance/accessReviews/definitions/5eac5a70-7cd7-4f20-92b0-f9dba70dd7f0/instances/6444d4fd-ab55-4608-8cf9-c6702d172bcc/decisions/e6cafba0-cbf0-4748-8868-0810c7f4cc06')
	.version('beta')
	.get();

```