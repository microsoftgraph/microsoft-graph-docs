---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let openShiftChangeRequests = await client.api('/teams/{id}/schedule/openShiftChangeRequests')
	.version('beta')
	.get();

```