---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let calendarGroup = await client.api('/me/calendarGroups/{id}')
	.version('beta')
	.get();

```