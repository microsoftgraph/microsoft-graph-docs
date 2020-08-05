---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const printTaskTrigger = {
  event: "jobStarted",
  definition@odata.bind: "https://graph.microsoft.com/beta/print/taskDefinitions/3203656e-6069-4e10-8147-d25290b00a3c"
};

let res = await client.api('/print/printers/ae63f617-4856-4b45-8ea9-69dfbeea230e/taskTriggers')
	.version('beta')
	.post(printTaskTrigger);

```