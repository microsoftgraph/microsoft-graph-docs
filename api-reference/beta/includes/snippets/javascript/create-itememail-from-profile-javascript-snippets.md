---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const itemEmail = {
  address: "Innocenty.Popov@adventureworks.com",
};

let res = await client.api('/me/profile/emails')
	.version('beta')
	.post(itemEmail);

```