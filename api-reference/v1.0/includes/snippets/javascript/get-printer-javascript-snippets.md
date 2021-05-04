---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let printer = await client.api('/print/printers/{printerId}')
	.get();

```