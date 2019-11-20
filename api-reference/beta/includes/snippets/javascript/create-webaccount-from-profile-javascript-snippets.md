---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const webAccount = {
  description: "description-value",
  userId: "userId-value",
  service: {
    name: "name-value",
    webUrl: "webUrl-value"
  },
  statusMessage: "statusMessage-value",
  webUrl: "webUrl-value"
};

let res = await client.api('/me/profile/webAccounts')
	.version('beta')
	.post(webAccount);

```