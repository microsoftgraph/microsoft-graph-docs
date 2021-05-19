---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let educationRubric = await client.api('/education/classes/{id}/assignments/{id}/rubric')
	.version('beta')
	.get();

```