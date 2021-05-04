---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let children = await client.api('/me/drive/special/{special-folder-name}/children')
	.get();

```