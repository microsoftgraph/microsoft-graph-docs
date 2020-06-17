---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unifiedRoleAssignment = {
    @odata.type: "#microsoft.graph.unifiedRoleAssignment",
    roleDefinitionId: "fe930be7-5e62-47db-91af-98c3a49a38b1", //template id of User Account Administrator
    principalId: "f8ca5a85-489a-49a0-b555-0a6d81e56f0d",
    directoryScopeId: "/administrativeUnits/5d107bba-d8e2-4e13-b6ae-884be90e5d1a" //object id of an administrative unit
};

let res = await client.api('/roleManagement/directory/roleAssignments')
	.version('beta')
	.post(unifiedRoleAssignment);

```