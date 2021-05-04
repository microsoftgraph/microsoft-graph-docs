---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let userPurpose = await client.api('/me/mailboxSettings/userPurpose')
	.version('beta')
	.get();

```