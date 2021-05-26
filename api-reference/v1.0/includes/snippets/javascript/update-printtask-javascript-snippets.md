---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const printTask = {
  status: {
    state: 'completed',
    description: 'completed'
  }
};

await client.api('/print/taskDefinitions/{taskDefinitionId}/tasks/{taskId}')
	.update(printTask);

```