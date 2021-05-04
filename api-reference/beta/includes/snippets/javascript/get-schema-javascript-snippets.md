---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let schema = await client.api('/external/connections/contosohr/schema')
	.version('beta')
	.get();

```