---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let exclusions = await client.api('/admin/windows/updates/deployments/{deploymentId}/audience/exclusions')
	.version('beta')
	.get();

```