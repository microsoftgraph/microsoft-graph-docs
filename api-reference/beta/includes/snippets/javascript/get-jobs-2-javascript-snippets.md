---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let jobs = await client.api('/print/shares/{id}/jobs')
	.version('beta')
	.get();

```