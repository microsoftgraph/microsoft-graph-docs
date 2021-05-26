---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let call = await client.api('/communications/calls/{id}')
	.version('beta')
	.get();

```