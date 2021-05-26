---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/education/classes/{id}/assignments/{id}/rubric/$ref')
	.version('beta')
	.delete();

```