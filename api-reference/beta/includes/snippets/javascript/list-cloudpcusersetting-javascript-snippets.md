---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let userSettings = await client.api('/deviceManagement/virtualEndpoint/userSettings')
	.version('beta')
	.get();

```