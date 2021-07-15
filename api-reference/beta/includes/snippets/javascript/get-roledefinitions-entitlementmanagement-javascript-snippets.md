---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let roleDefinitions = await client.api('/roleManagement/entitlementManagement/roleDefinitions')
	.version('beta')
	.get();

```