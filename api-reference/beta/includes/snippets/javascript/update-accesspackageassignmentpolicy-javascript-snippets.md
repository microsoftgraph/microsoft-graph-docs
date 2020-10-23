---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackageAssignmentPolicy = {
  id: "b2eba9a1-b357-42ee-83a8-336522ed6cbf",
  accessPackageId: "1b153a13-76da-4d07-9afa-c6c2b1f2e824",
  displayName: "All Users",
  description: "All users can request for access to the directory.",
  isDenyPolicy: false,
  canExtend: false,
  durationInDays: 365,
  "requestorSettings" : {
    scopeType: "AllExistingDirectorySubjects",
    acceptRequests: true,
    allowedRequestors: []
  },
  "requestApprovalSettings" : {
    isApprovalRequired: false,
    isApprovalRequiredForExtension: false,
    isRequestorJustificationRequired: false,
    approvalMode: "NoApproval",
    approvalStages: []
  },
  "accessReviewSettings" : null
};

let res = await client.api('/identityGovernance/entitlementManagement/accessPackageAssignmentPolicies/b2eba9a1-b357-42ee-83a8-336522ed6cbf')
	.version('beta')
	.put(accessPackageAssignmentPolicy);

```