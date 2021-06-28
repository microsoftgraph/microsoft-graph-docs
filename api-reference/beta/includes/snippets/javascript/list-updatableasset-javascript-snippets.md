---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let members = await client.api('/admin/windows/updates/deployments/{deploymentId}/audience/members')
	.version('beta')
	.get();

```