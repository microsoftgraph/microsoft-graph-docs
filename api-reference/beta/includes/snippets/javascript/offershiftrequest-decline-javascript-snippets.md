---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const decline = {
  message: "Sorry, you can't offer this shift."
};

let res = await client.api('/teams/schedule/offerShiftRequests/decline')
	.version('beta')
	.post(decline);

```