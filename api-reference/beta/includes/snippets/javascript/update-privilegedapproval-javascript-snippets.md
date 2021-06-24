---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const privilegedApproval = {
  approvalState: 'approvalState-value',
  approverReason: 'approverReason-value'
};

await client.api('/privilegedApproval/{requestId}')
	.version('beta')
	.update(privilegedApproval);

```