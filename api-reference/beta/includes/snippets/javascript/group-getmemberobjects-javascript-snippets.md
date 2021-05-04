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

await client.api('/groups/{id}/getMemberObjects')
	.version('beta')
	.post(string);

```