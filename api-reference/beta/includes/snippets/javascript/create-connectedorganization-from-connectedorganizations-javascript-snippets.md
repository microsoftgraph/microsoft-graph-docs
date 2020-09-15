---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const connectedOrganization = {
  displayName:"Connected organization name",
  description:"Connected organization description",
  identitySources: [
    {
      @odata.type: "#microsoft.graph.domainIdentitySource",
      domainName: "example.com",
      displayName: "example.com"
      }
  ],
  state:"proposed"
};

let res = await client.api('/identityGovernance/entitlementManagement/connectedOrganizations/')
	.version('beta')
	.post(connectedOrganization);

```