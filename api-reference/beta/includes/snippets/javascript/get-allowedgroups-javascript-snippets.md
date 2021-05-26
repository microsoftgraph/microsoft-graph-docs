---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let allowedGroups = await client.api('/print/shares/{id}/allowedGroups')
	.version('beta')
	.get();

```