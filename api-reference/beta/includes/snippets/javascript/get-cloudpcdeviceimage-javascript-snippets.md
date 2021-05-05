---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPcDeviceImage = await client.api('/deviceManagement/virtualEndpoint/deviceImages/{id}')
	.version('beta')
	.get();

```