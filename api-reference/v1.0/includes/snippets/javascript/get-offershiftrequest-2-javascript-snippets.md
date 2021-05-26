---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let offerShiftRequests = await client.api('/teams/{teamId}/schedule/offerShiftRequests')
	.get();

```