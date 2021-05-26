---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const governanceRoleAssignmentRequest = {
  roleDefinitionId: '65bb4622-61f5-4f25-9d75-d0e20cf92019',
  resourceId: 'e5e7d29d-5465-45ac-885f-4716a5ee74b5',
  subjectId: '74765671-9ca4-40d7-9e36-2f4a570608a6',
  assignmentState: 'Eligible',
  type: 'AdminRemove'
};

await client.api('/privilegedAccess/azureResources/roleAssignmentRequests')
	.version('beta')
	.post(governanceRoleAssignmentRequest);

```