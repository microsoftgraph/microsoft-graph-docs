---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const chatMessage = {
  body: {
     content: "Hello world"
  }
};

let res = await client.api('/teams/{id}/channels/{id}/messages')
	.version('beta')
	.post(chatMessage);

```