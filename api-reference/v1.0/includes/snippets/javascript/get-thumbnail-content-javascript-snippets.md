---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let content = await client.api('/me/drive/items/{item-id}/thumbnails/{thumb-id}/{size}/content')
	.get();

```