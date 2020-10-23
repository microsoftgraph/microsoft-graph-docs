---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/connections/contosohr/operations/3ed1595a-4bae-43c2-acda-ef973e581323')
	.version('beta')
	.get();

```