---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const webAccount = {
  webUrl: "https://github.com/innocenty.popov"
};

let res = await client.api('/me/profile/webAccounts/{id}')
	.version('beta')
	.update(webAccount);

```