---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/me/messages/AAMkADADVj3fyAABZ5hYdAAA=')
	.expand('eventMessage/event')
	.get();

```