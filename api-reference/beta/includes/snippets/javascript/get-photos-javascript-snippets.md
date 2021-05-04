---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let photos = await client.api('/groups/{id}/photos')
	.version('beta')
	.get();

```