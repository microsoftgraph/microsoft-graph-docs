---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const decline = {
  message: "message-value"
};

let res = await client.api('/teams/{id}/schedule/swapShiftsChangeRequests/{swapShiftChangeRequestId}/decline')
	.version('beta')
	.post(decline);

```