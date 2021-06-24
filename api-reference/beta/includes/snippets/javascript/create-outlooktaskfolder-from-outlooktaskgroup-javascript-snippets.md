---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const outlookTaskFolder = {
  name: 'Cooking'
};

await client.api('/me/outlook/taskgroups/AAMkADIyAAAhrbe-AAA=/taskfolders')
	.version('beta')
	.post(outlookTaskFolder);

```