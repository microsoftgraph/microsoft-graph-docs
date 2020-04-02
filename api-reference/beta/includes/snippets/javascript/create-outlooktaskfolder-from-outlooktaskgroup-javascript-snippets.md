---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const taskfolders = {
  name: "Cooking"
};

let res = await client.api('/me/taskgroups/AAMkADIyAAAhrbe-AAA'/taskfolders')
	.version('beta')
	.post(taskfolders);

```