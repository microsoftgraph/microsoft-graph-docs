---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const String = {
  securityEnabledOnly: true
};

let res = await client.api('/servicePrincipals/{id}/getMemberGroups')
	.version('beta')
	.post(String);

```