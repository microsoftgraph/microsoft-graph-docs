---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let directoryRole = await client.api('/directoryRoles/roleTemplateId=88d8e3e3-8f55-4a1e-953a-9b9898b8876b')
	.version('beta')
	.get();

```