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
  resourceApplication: "00000003-0000-0000-c000-000000000000"
};

let res = await client.api('/policies/permissionGrantPolicies/my-custom-consent-policy/excludes')
	.post(permissionGrantConditionSet);

```