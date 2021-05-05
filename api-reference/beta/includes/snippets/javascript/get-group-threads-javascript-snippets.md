---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let threads = await client.api('/groups/{id}/threads')
	.version('beta')
	.get();

```