---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const todoTaskList = {
  displayName: "Vacation Plan"
};

let res = await client.api('/me/todo/lists/AAMkADIyAAAhrbPWAAA=')
	.update(todoTaskList);

```