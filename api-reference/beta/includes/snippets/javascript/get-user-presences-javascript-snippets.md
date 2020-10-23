---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/communications/presences/dc74d9bb-6afe-433d-8eaa-e39d80d3a647')
	.version('beta')
	.get();

```