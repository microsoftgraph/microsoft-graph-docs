---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/directoryRoles/{id}/members/{id}/$ref')
	.version('beta')
	.delete();

```