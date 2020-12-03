---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const permissionGrantConditionSet = {
  permissionType: "delegated",
  clientApplicationsFromVerifiedPublisherOnly: true
};

let res = await client.api('/policies/permissionGrantPolicies/{id}/includes')
	.post(permissionGrantConditionSet);

```