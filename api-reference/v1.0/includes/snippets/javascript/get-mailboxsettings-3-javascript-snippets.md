---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let workingHours = await client.api('/me/mailboxSettings/workingHours')
	.get();

```