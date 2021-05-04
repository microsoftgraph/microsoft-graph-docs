---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const outlookTask = {
  subject: 'Shop for children\'s weekend',
  startDateTime: {
      dateTime: '2016-05-03T09:00:00',
      timeZone: 'Eastern Standard Time'
  },
  dueDateTime: {
      dateTime: '2016-05-05T16:00:00',
      timeZone: 'Eastern Standard Time'
  }
};

await client.api('/me/outlook/tasks')
	.version('beta')
	.post(outlookTask);

```