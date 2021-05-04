---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let schemaExtensions = await client.api('/schemaExtensions')
	.version('beta')
	.filter('id eq \'graphlearn_test\'')
	.get();

```