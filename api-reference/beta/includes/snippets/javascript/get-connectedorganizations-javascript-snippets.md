---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let connectedOrganizations = await client.api('/identityGovernance/entitlementManagement/connectedOrganizations')
	.version('beta')
	.get();

```