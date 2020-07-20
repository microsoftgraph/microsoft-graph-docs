---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/print/printers/86b6d420-7e6b-4797-a05c-af4e56cd81bd/jobs/31216')
	.version('beta')
	.expand('documents')
	.get();

```