---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/drive/items/{item-id}/content?format=%7Bformat%7D')
	.version('beta')
	.get();

```