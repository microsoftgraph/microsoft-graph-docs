---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let appRoleAssignments = await client.api('/servicePrincipals/8e881353-1735-45af-af21-ee1344582a4d/appRoleAssignments')
	.version('beta')
	.get();

```