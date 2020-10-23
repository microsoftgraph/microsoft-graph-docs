---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const connectedOrganization = {
  displayName:"Connected organization new name",
  description:"Connected organization new description",
  state:"configured"
};

let res = await client.api('/identityGovernance/entitlementManagement/connectedOrganizations/{id}')
	.version('beta')
	.update(connectedOrganization);

```