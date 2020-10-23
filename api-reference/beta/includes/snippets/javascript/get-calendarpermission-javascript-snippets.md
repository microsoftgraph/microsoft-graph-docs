---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/users/{id}/calendar/calendarPermissions/{id}')
	.version('beta')
	.get();

```