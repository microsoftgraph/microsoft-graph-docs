---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/print/shares/{id}/allowedGroups/{id}/$ref')
	.version('beta')
	.delete();

```