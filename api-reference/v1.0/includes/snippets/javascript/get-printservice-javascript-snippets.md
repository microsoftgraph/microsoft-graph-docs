---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let printService = await client.api('/print/services/{printServiceId}')
	.get();

```