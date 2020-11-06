---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/external/connections/contosohr/groups/31bea3d537902000')
	.version('beta')
	.delete();

```