---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const identityUserFlowAttributeAssignment = {
  userInputType: 'textBox'
};

await client.api('/identity/b2cUserFlows/{b2cIdentityUserFlowId}/userAttributeAssignments/{id}')
	.version('beta')
	.update(identityUserFlowAttributeAssignment);

```