---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let set = await client.api('/termStore/sets/{setId}')
	.version('beta')
	.get();

```