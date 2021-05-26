---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let printJob = await client.api('/print/printers/c05f3726-0d4b-4aa1-8fe9-2eb981bb26fb/jobs/5182')
	.version('beta')
	.expand('tasks')
	.get();

```