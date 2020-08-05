---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const appRoleAssignment = Content-type: appRoleAssignments/json

{
  principalId: "2fe96d23-5dc6-4f35-8222-0426a8c115c8",
  principalType: "User",
  appRoleId:"18d14569-c3bd-439b-9a66-3a2aee01d14f",
  resourceId:"b00c693f-9658-4c06-bd1b-c402c4653dea"
};

let res = await client.api('/servicePrincipals/b00c693f-9658-4c06-bd1b-c402c4653dea/appRoleAssignments')
	.version('beta')
	.post(appRoleAssignment);

```