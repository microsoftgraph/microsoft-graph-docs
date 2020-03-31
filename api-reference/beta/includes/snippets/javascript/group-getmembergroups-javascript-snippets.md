---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const string = {
  securityEnabledOnly: false
};

let res = await client.api('/groups/{id}/getMemberGroups')
	.version('beta')
	.post(string);

```