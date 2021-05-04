---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const conversationThread = {
  originalStartTimeZone: 'originalStartTimeZone-value',
  originalEndTimeZone: 'originalEndTimeZone-value',
  responseStatus: {
    response: '',
    time: 'datetime-value'
  },
  uid: 'iCalUId-value',
  reminderMinutesBeforeStart: 99,
  isReminderOn: true
};

await client.api('/groups/02bd9fd6-8f93-4758-87c3-1fb73740a315/threads/AAQkAGI5MWY5ZmUyLTJiNzYtNDE0ZC04OWEwLWM3M2FjYmM3NzNlZgMkABAAG5c7eC4NYEynIoXsuxXB9RAAG5c7eC4NYEynIoXsuxXB9Q==')
	.version('beta')
	.update(conversationThread);

```