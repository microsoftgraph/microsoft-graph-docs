---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const approve = {
  message: "message-value"
};

let res = await client.api('/teams/{id}/schedule/swapShiftsChangeRequests/{swapShiftChangeRequestId}/approve')
	.version('beta')
	.post(approve);

```