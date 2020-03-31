---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const timeOffRequest = {
  message: "message-value"
};

let res = await client.api('/teams/{id}/schedule/timeOffRequests/approve')
	.version('beta')
	.post(timeOffRequest);

```