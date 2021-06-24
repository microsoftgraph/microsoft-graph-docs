---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let plannerRoster = await client.api('/planner/rosters/6519868f-868f-6519-8f86-19658f861965')
	.version('beta')
	.get();

```