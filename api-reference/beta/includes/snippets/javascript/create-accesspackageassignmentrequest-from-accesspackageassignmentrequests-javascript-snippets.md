---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackageAssignmentRequest = {
    requestType: 'UserAdd',
    accessPackageAssignment: {
        accessPackageId: 'a914b616-e04e-476b-aa37-91038f0b165b'
    },
    justification: 'Need access to New Hire access package'
};

await client.api('/identityGovernance/entitlementManagement/accessPackageAssignmentRequests')
	.version('beta')
	.post(accessPackageAssignmentRequest);

```