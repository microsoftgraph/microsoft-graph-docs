---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let classes = await client.api('/education/schools/10002/classes')
	.version('beta')
	.get();

```