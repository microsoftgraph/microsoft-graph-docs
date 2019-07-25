---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/me/calendarView/delta')
	.header('Prefer','odata.maxpagesize=2')
	.skiptoken('R0usmcCM996atia_s')
	.get();

```