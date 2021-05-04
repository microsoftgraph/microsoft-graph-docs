---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let dataPolicyOperation = await client.api('/dataPolicyOperations/{id}')
	.version('beta')
	.get();

```