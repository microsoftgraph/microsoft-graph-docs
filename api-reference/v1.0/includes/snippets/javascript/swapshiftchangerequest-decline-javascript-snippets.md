---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const decline = {
  message: 'message-value'
};

await client.api('/teams/{teamId}/schedule/swapShiftsChangeRequests/{swapShiftChangeRequestId}/decline')
	.post(decline);

```