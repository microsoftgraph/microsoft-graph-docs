---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let subscription = await client.api('/me/drive/root/subscriptions/socketIo')
	.version('beta')
	.get();

```