---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const String = {
  groupIds: [
    "groupIds-value"
  ]
};

let res = await client.api('/servicePrincipals/{id}/checkMemberGroups')
	.version('beta')
	.post(String);

```