---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let todoTaskList = await client.api('/me/todo/lists/AAMkADIyAAAAABrJAAA=')
	.get();

```