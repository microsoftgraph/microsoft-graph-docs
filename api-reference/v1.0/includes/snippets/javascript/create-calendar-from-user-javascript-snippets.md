---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const calendar = {
  name: 'Volunteer'
};

await client.api('/me/calendars')
	.post(calendar);

```