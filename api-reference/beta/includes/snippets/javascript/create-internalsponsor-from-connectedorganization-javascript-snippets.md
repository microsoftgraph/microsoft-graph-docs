---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const directoryObject = {
  @odata.id: "https://graph.microsoft.com/beta/users/{id}"
};

let res = await client.api('/identityGovernance/entitlementManagement/connectedOrganizations/{id}/internalSponsors/$ref')
	.version('beta')
	.post(directoryObject);

```