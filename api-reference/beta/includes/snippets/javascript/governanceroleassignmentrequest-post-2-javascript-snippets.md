---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const governanceRoleAssignmentRequest = {
  roleDefinitionId: '8b4d1d51-08e9-4254-b0a6-b16177aae376',
  resourceId: 'e5e7d29d-5465-45ac-885f-4716a5ee74b5',
  subjectId: '918e54be-12c4-4f4c-a6d3-2ee0e3661c51',
  assignmentState: 'Active',
  type: 'UserAdd',
  reason: 'Activate the owner role',
  schedule: {
    type: 'Once',
    startDateTime: '2018-05-12T23:28:43.537Z',
    duration: 'PT9H'
  },
  linkedEligibleRoleAssignmentId: 'e327f4be-42a0-47a2-8579-0a39b025b394'
};

await client.api('/privilegedAccess/azureResources/roleAssignmentRequests')
	.version('beta')
	.post(governanceRoleAssignmentRequest);

```