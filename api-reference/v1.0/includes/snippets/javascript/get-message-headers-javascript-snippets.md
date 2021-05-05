---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let message = await client.api('/me/messages/AAMkADhAAAW-VPeAAA=/')
	.select('internetMessageHeaders')
	.get();

```