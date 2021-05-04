---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let openShifts = await client.api('/teams/{id}/schedule/openShifts')
	.get();

```