---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let printServiceEndpoint = await client.api('/print/services/{id}/endpoints/{name}')
	.version('beta')
	.get();

```