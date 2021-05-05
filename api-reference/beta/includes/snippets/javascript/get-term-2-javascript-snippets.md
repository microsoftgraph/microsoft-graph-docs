---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let children = await client.api('/termStore/sets/{setId}/children')
	.version('beta')
	.get();

```