---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessReviewPolicy = {
  isGroupOwnerManagementEnabled: true
};

await client.api('/identityGovernance/accessReviews/policy')
	.version('beta')
	.update(accessReviewPolicy);

```