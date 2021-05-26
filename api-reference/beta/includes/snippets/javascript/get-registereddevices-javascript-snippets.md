---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let registeredDevices = await client.api('/me/registeredDevices')
	.version('beta')
	.get();

```