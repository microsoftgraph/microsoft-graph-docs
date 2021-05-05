---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let printOperation = await client.api('/print/operations/{printOperationId}')
	.get();

```