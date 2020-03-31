---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const approve = {
  message: "Approved!"
};

let res = await client.api('/teams/schedule/offerShiftRequests/approve')
	.version('beta')
	.post(approve);

```