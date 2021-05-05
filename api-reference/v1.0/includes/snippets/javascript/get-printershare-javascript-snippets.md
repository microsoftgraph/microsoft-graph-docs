---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let printerShare = await client.api('/print/shares/{printerShareId}')
	.get();

```