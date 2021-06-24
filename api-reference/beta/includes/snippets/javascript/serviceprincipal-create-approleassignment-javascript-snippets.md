---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const appRoleAssignment = {
  principalId: '9028d19c-26a9-4809-8e3f-20ff73e2d75e',
  resourceId: '8fce32da-1246-437b-99cd-76d1d4677bd5',
  appRoleId: '498476ce-e0fe-48b0-b801-37ba7e2685c6'
};

await client.api('/servicePrincipals/9028d19c-26a9-4809-8e3f-20ff73e2d75e/appRoleAssignments')
	.version('beta')
	.post(appRoleAssignment);

```