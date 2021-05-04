---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let swapShiftsChangeRequests = await client.api('/teams/{teamId}/schedule/swapShiftsChangeRequests')
	.version('beta')
	.get();

```