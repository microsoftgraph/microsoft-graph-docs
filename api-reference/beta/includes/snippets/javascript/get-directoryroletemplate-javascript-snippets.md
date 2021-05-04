---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let directoryRoleTemplate = await client.api('/directoryRoleTemplates/{id}')
	.version('beta')
	.get();

```