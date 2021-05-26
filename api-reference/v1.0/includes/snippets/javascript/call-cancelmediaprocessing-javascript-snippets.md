---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const cancelMediaProcessingOperation = {
  clientContext: 'clientContext-value'
};

await client.api('/communications/calls/{id}/cancelMediaProcessing')
	.post(cancelMediaProcessingOperation);

```