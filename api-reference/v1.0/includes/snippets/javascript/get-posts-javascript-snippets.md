---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let posts = await client.api('/groups/{id}/threads/{id}/posts')
	.get();

```