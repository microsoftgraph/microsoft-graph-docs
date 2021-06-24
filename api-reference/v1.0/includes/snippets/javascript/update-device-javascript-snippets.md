---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const device = {
  accountEnabled: false
};

await client.api('/devices/{id}')
	.update(device);

```