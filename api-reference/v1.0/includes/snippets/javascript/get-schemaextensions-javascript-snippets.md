---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let schemaExtensions = await client.api('/schemaExtensions')
	.filter('id eq \'graphlearn_test\'')
	.get();

```