---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let delta = await client.api('/me/calendarView/delta?startdatetime=%7Bstart_datetime%7D&enddatetime=%7Bend_datetime%7D')
	.get();

```