---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let schemaExtension = await client.api('/schemaExtensions/graphlearn_test')
	.version('beta')
	.get();

```