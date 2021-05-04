---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const calendar = {
  name: 'Marketing calendar'
};

await client.api('/me/calendargroups/AAMkADYAAAR9NR5AAA=/calendars')
	.post(calendar);

```