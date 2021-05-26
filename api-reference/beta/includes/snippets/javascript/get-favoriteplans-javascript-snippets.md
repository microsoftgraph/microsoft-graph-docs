---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let favoritePlans = await client.api('/me/planner/favoritePlans')
	.version('beta')
	.get();

```