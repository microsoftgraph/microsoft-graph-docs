---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let shift = await client.api('/teams/{teamId}/schedule/shifts/{shiftId}')
	.get();

```