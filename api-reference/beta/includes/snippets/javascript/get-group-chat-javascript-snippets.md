---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let chat = await client.api('/chats/19:b8577894a63548969c5c92bb9c80c5e1@thread.v2')
	.version('beta')
	.get();

```