---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let connectedOrganization = await client.api('/identityGovernance/entitlementManagement/connectedOrganizations/{id}')
	.version('beta')
	.get();

```