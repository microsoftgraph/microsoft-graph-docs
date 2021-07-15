---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let credentialUserRegistrationsSummaries = await client.api('/tenantRelationships/managedTenants/credentialUserRegistrationsSummaries')
	.version('beta')
	.get();

```