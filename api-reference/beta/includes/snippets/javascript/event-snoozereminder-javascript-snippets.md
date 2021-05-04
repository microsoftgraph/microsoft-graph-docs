---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const snoozeReminder = {
  newReminderTime: {
    dateTime: '2016-10-19T10:37:00Z',
    timeZone: 'timeZone-value'
  }
};

await client.api('/me/events/{id}/snoozeReminder')
	.version('beta')
	.post(snoozeReminder);

```