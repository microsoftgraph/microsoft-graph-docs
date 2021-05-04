---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let delta = await client.api('/me/calendar/events/delta?startDateTime=2020-06-12T00:00:00Z')
	.version('beta')
	.get();

```