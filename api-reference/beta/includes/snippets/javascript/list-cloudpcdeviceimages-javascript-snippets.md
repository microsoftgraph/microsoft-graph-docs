---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let deviceImages = await client.api('/deviceManagement/virtualEndpoint/deviceImages')
	.version('beta')
	.get();

```