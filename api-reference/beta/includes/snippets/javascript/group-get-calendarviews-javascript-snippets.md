---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let calendarView = await client.api('/groups/02bd9fd6-8f93-4758-87c3-1fb73740a315/calendarView?startDateTime=2017-01-01T19:00:00-08:00&endDateTime=2017-10-01T19:00:00.00-08:00')
	.version('beta')
	.header('Prefer','outlook.body-content-type="text"')
	.get();

```