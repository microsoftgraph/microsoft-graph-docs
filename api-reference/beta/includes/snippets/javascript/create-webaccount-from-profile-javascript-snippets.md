---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const webAccount = {
  description: "My Github contributions!",
  userId: "innocenty.popov",
  service: {
    name: "GitHub",
    webUrl: "https://github.com"
  }
};

let res = await client.api('/me/profile/webAccounts')
	.version('beta')
	.post(webAccount);

```