---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/app/calls/57DAB8B1894C409AB240BD8BEAE78896/participants')
	.version('beta')
	.header('Authorization','Bearer <TOKEN>')
	.get();

```