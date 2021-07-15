---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let tenantDetailedInformation = await client.api('/tenantRelationships/managedTenants/tenantsDetailedInformation/{tenantDetailedInformationId}')
	.version('beta')
	.get();

```