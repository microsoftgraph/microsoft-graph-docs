---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let webAccount = await client.api('/me/profile/webAccounts/{id}')
	.version('beta')
	.get();

```