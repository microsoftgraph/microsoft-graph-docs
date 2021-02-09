---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/print/taskDefinitions/4c6a0f26-8e5d-4bf6-91e6-4a5731adec19')
	.version('beta')
	.delete();

```