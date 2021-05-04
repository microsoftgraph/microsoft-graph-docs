---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const todoTask = {
   title: 'A new task',
   linkedResources: [
      {
         webUrl: 'http://microsoft.com',
         applicationName: 'Microsoft',
         displayName: 'Microsoft'
      }
   ]
};

await client.api('/me/todo/lists/AQMkADAwATM0MDAAMS0yMDkyLWVjMzYtM/tasks')
	.post(todoTask);

```