---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let timeOff = await client.api('/teams/{teamId}/schedule/timesOff/{timeOffId}')
	.get();

```