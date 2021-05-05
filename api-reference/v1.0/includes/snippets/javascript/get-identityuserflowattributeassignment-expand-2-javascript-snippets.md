---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let userAttributeAssignments = await client.api('/identity/b2xUserFlows/B2X_1_Partner/userAttributeAssignments')
	.expand('userAttribute')
	.get();

```