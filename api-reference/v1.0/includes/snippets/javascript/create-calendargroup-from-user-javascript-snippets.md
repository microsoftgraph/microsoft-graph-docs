---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const calendarGroup = {
  name: 'Personal events'
};

await client.api('/me/calendarGroups')
	.post(calendarGroup);

```