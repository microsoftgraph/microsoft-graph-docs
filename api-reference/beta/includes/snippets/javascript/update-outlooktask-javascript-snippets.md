---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const outlookTask = {
  dueDateTime: {
      dateTime: '2016-05-06T16:00:00',
      timeZone: 'Eastern Standard Time'
  }
};

await client.api('/me/outlook/tasks/AAMkADA1MTHgwAAA=')
	.version('beta')
	.update(outlookTask);

```