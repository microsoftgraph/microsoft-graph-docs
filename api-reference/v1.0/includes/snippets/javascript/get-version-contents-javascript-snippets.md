---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let stream = await client.api('/me/drive/items/{item-id}/versions/{version-id}/content')
	.get();

```