---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let resources = await client.api('/education/classes/{id}/assignments/{id}/submissions/{id}/resources')
	.version('beta')
	.get();

```