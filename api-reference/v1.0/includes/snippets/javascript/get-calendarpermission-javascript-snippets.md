---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let calendarPermission = await client.api('/users/{id}/calendar/calendarPermissions/{id}')
	.get();

```