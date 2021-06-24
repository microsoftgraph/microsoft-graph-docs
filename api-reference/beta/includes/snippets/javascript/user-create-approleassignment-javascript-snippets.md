---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const appRoleAssignment = {
  principalId: 'cde330e5-2150-4c11-9c5b-14bfdc948c79',
  resourceId: '8e881353-1735-45af-af21-ee1344582a4d',
  appRoleId: '00000000-0000-0000-0000-000000000000'
};

await client.api('/users/cde330e5-2150-4c11-9c5b-14bfdc948c79/appRoleAssignments')
	.version('beta')
	.post(appRoleAssignment);

```