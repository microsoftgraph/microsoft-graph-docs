---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let printers = await client.api('/print/printers')
	.version('beta')
	.get();

```