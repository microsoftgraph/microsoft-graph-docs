---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackageAssignmentRequest = {
  requestType: 'AdminAdd',
  accessPackageAssignment: {
     targetId: '46184453-e63b-4f20-86c2-c557ed5d5df9',
     assignmentPolicyId: '2264bf65-76ba-417b-a27d-54d291f0cbc8',
     accessPackageId: 'a914b616-e04e-476b-aa37-91038f0b165b'
  }
};

await client.api('/identityGovernance/entitlementManagement/accessPackageAssignmentRequests')
	.version('beta')
	.post(accessPackageAssignmentRequest);

```