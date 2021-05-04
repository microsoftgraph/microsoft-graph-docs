---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/print/printers/{id}/jobs/{id}/documents/{id}/uploadData')
	.version('beta')
	.post();

```