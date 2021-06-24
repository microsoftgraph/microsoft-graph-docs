---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const chat = {
    topic: 'Group chat title update'
};

await client.api('/chats/19:1c5b01696d2e4a179c292bc9cf04e63b@thread.v2')
	.update(chat);

```