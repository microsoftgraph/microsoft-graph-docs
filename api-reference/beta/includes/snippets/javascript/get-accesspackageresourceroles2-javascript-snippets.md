---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let accessPackageResourceRoles = await client.api('/identityGovernance/entitlementManagement/accessPackageCatalogs/beedadfe-01d5-4025-910b-84abb9369997/accessPackageResourceRoles')
	.version('beta')
	.filter('(originSystem eq \'SharePointOnline\' and accessPackageResource/id eq \'53c71803-a0a8-4777-aecc-075de8ee3991\')')
	.select('displayName,originId')
	.get();

```