---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const subscribeToToneOperation = {
  clientContext: "fd1c7836-4d84-4e24-b6aa-23188688cc54"
};

let res = await client.api('/communications/calls/{id}/subscribeToTone')
	.post(subscribeToToneOperation);

```