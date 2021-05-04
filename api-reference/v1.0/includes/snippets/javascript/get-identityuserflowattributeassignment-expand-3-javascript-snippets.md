---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let identityUserFlowAttributeAssignment = await client.api('/identity/b2xUserFlows/{id}/userAttributeAssignments/{id}')
	.expand('userAttribute')
	.get();

```