---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/me/calendarview/delta?startdatetime=%7Bstart_datetime%7D&enddatetime=%7Bend_datetime%7D')
	.version('beta')
	.get();

```