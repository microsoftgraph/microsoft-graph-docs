---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const swapShiftsChangeRequests = {
  recipientShiftId: "recipientShiftId-value"
};

let res = await client.api('/teams/{id}/schedule/swapShiftsChangeRequests')
	.version('beta')
	.update(swapShiftsChangeRequests);

```