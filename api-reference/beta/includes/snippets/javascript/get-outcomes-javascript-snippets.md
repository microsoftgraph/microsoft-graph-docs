---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let outcomes = await client.api('/education/classes/{id}/assignments/{id}/submissions/{id}/outcomes')
	.version('beta')
	.get();

```