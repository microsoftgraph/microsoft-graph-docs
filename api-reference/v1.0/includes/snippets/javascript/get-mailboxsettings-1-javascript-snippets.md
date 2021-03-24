---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let mailboxSettings = await client.api('/me/mailboxSettings')
	.get();

```