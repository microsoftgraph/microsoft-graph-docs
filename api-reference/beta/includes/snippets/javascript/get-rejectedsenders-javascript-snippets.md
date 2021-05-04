---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let rejectedSenders = await client.api('/groups/{id}/rejectedSenders')
	.version('beta')
	.get();

```