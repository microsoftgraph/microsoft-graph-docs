---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const outlookTaskGroup = {
  name: "Personal Tasks",
};

let res = await client.api('/me/outlook/taskgroups/AAMkADIyAAAhrbe-AAA=')
	.version('beta')
	.update(outlookTaskGroup);

```