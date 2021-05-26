---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const outlookTaskGroup = {
  name: 'Leisure tasks'
};

await client.api('/me/outlook/taskGroups')
	.version('beta')
	.post(outlookTaskGroup);

```