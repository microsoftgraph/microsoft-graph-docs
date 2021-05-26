---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const outlookTaskFolder = {
  name: 'Volunteer'
};

await client.api('/me/outlook/taskfolders')
	.version('beta')
	.post(outlookTaskFolder);

```