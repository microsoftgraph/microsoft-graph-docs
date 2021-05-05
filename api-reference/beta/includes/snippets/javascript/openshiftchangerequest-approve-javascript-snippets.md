---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const approve = {
  message: 'message-value'
};

await client.api('/teams/{id}/schedule/openShiftChangeRequests/{openShiftChangeRequestId}/approve')
	.version('beta')
	.post(approve);

```