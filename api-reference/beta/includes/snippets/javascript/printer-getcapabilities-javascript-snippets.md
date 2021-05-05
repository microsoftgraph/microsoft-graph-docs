---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let printerCapabilities = await client.api('/print/printers/{id}/getCapabilities')
	.version('beta')
	.get();

```