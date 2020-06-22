---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const servicePrincipal = {
  appRoleAssignmentRequired: true
};

let res = await client.api('/servicePrincipals/{id}')
	.update(servicePrincipal);

```