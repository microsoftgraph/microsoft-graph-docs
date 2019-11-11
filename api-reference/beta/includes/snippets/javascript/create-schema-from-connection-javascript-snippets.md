---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const schema = {
  baseType: "microsoft.graph.externalFile"
};

let res = await client.api('/connections/contosofiles/schema')
	.version('beta')
	.post(schema);

```