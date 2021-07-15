---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let operations = await client.api('/chats/19:c253a29b5f694b55a6baad8e83510af7@thread.v2/operations')
	.version('beta')
	.get();

```