---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let relations = await client.api('/termStore/sets/{setId}/relations')
	.version('beta')
	.get();

```