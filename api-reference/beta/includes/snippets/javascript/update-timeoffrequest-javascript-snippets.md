---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const timeOffRequests = {
  startDateTime: "datetime-value",
  endDateTime: "datetime-value",
  timeOffReasonId: "timeOffReasonId-value"
};

let res = await client.api('/teams/{id}/schedule/timeOffRequests')
	.version('beta')
	.update(timeOffRequests);

```