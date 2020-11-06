---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const todoTask = {
   dueDateTime:{
      dateTime:"2020-07-25T16:00:00",
      timeZone:"Eastern Standard Time"
   }
};

let res = await client.api('/me/todo/lists/AAMkADA1MTHgwAAA=/tasks/721a35e2-35e2-721a-e235-1a72e2351a72')
	.update(todoTask);

```