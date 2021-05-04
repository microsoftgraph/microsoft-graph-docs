---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessReviewInstanceDecisionItem = {
  decision: 'Approve',
  justification: 'This person is still on my team',
};

await client.api('/me/pendingAccessReviewInstances/70a68410-67f3-4d4c-b946-6989e050be19/decisions/12348410-67f3-4d4c-b946-6989e050be19')
	.version('beta')
	.update(accessReviewInstanceDecisionItem);

```