---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const appRoleAssignment = {
  principalId: '7679d9a4-2323-44cd-b5c2-673ec88d8b12',
  resourceId: '076e8b57-bac8-49d7-9396-e3449b685055',
  appRoleId: '00000000-0000-0000-0000-000000000000'
};

await client.api('/groups/7679d9a4-2323-44cd-b5c2-673ec88d8b12/appRoleAssignments')
	.post(appRoleAssignment);

```