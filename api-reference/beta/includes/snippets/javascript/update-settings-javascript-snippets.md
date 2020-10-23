---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const printSettings = {
  documentConversionEnabled: true
};

let res = await client.api('/print/settings')
	.version('beta')
	.update(printSettings);

```