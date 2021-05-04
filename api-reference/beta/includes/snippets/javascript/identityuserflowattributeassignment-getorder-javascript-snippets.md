---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let assignmentOrder = await client.api('/identity/b2cUserFlows/{id}/userAttributeAssignments/getOrder')
	.version('beta')
	.get();

```