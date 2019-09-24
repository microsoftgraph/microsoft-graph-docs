---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const schedule = {
  enabled: true,
  timeZone: "America/Chicago"
};

let res = await client.api('/teams/{teamId}/schedule')
	.version('beta')
	.put(schedule);

```