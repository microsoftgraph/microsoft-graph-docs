---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let swapShiftsChangeRequest = await client.api('/teams/{teamId}/schedule/swapShiftsChangeRequests/{swapShiftsChangeRequestId}')
	.get();

```