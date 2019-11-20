---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const cancelMediaProcessingOperation = {
  all: true,
  clientContext: "clientContext-value"
};

let res = await client.api('/communications/calls/{id}/cancelMediaProcessing')
	.version('beta')
	.post(cancelMediaProcessingOperation);

```