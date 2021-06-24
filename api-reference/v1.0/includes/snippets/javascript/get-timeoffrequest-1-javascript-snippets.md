---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let timeOffRequest = await client.api('/teams/{teamId}/schedule/timeOffRequests/{timeOffRequestId}')
	.get();

```