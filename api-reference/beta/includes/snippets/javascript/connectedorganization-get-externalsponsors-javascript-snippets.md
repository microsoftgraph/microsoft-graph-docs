---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/identityGovernance/entitlementManagement/connectedOrganizations/{id}/externalSponsors')
	.version('beta')
	.get();

```