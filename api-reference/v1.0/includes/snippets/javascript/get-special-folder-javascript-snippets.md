---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let driveItem = await client.api('/me/drive/special/{name}')
	.get();

```