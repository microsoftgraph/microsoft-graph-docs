---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessReviewInstanceDecisionItem = {
  decision: "Approve",
  justification: "I trust this person"
};

let res = await client.api('/me/pendingAccessReviewInstances/70a68410-67f3-4d4c-b946-6989e050be19/decisions/654b34e7-b48f-4772-a2d4-08f1d0dd014c')
	.version('beta')
	.update(accessReviewInstanceDecisionItem);

```