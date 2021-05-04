---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let conversationThread = await client.api('/groups/{id}/threads/{id}')
	.version('beta')
	.get();

```