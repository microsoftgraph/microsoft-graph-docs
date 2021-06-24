---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const calendarGroup = {
  name: 'name-value'
};

await client.api('/me/calendarGroups/{id}')
	.update(calendarGroup);

```