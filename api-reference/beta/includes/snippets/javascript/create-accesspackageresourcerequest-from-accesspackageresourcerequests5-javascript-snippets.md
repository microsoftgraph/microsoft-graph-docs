---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackageResourceRequest = {
  catalogId: 'beedadfe-01d5-4025-910b-84abb9369997',
  requestType: 'AdminRemove',
  accessPackageResource: {
    id: '354078e5-dbce-4894-8af4-0ab274d41662'
  }
};

await client.api('/identityGovernance/entitlementManagement/accessPackageResourceRequests')
	.version('beta')
	.post(accessPackageResourceRequest);

```