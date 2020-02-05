---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const tentativelyAccept = {
  comment: "I will probably be able to make it.",
  sendResponse: true
};

let res = await client.api('/me/events/AAMkADADVj3fyAABZ5ieyAAA=/tentativelyAccept')
	.post(tentativelyAccept);

```