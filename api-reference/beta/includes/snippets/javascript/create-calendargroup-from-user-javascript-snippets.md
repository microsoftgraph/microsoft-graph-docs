---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const calendarGroup = {
  name: "name-value",
  classId: "classId-value",
  changeKey: "changeKey-value"
};

let res = await client.api('/me/calendarGroups')
	.version('beta')
	.post(calendarGroup);

```