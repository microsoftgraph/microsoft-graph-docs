---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const outlookTask = {
  subject: 'Shop for dinner',
  startDateTime: {
      dateTime: '2016-04-23T18:00:00',
      timeZone: 'Pacific Standard Time'
  },
  dueDateTime: {
      dateTime: '2016-04-25T13:00:00',
      timeZone: 'Pacific Standard Time'
  }
};

await client.api('/me/outlook/taskfolders('AAMkADIyAAAhrbPXAAA=')/tasks')
	.version('beta')
	.post(outlookTask);

```