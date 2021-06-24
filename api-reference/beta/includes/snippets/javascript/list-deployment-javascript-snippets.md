---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let deployments = await client.api('/admin/windows/updates/deployments')
	.version('beta')
	.get();

```