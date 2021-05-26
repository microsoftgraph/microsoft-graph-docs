---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getAllMessages = await client.api('/teams/fbe2bf47-16c8-47cf-b4a5-4b9b187c508b/channels/getAllMessages')
	.version('beta')
	.get();

```