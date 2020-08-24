---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const lists = {
  displayName: "Travel items",
};

let res = await client.api('/me/todo/lists')
	.version('beta')
	.post(lists);

```