---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const message = {
  destinationId: "deleteditems"
};

let res = await client.api('/me/messages/AAMkADhAAATs28OAAA=/move')
	.post(message);

```