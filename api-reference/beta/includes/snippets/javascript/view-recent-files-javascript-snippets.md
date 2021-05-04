---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let recent = await client.api('/me/drive/recent')
	.version('beta')
	.get();

```