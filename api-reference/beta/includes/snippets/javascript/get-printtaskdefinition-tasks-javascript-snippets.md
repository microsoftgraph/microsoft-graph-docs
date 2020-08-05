---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/print/taskDefinitions/92d72a3d-cad7-4809-8924-43833282b079/tasks')
	.version('beta')
	.get();

```