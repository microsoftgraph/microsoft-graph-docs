---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const printTaskTrigger = {
  event: 'jobStarted',
  'definition@odata.bind': 'https://graph.microsoft.com/v1.0/print/taskDefinitions/{taskDefinitionId}'
};

await client.api('/print/printers/{printerId}/taskTriggers')
	.post(printTaskTrigger);

```