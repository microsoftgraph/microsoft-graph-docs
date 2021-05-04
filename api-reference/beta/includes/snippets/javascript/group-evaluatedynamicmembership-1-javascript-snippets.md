---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const evaluateDynamicMembershipResult = {
  memberId: '319b41e8-d9e4-42f8-bdc9-741113f48b33'
};

await client.api('/groups/{id}/evaluateDynamicMembership')
	.version('beta')
	.post(evaluateDynamicMembershipResult);

```