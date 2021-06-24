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

await client.api('/policies/accessReviewPolicy')
	.version('beta')
	.update(accessReviewPolicy);

```