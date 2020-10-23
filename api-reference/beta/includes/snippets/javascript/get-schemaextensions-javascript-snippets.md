---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/schemaExtensions')
	.version('beta')
	.filter('id eq 'graphlearn_test'')
	.get();

```